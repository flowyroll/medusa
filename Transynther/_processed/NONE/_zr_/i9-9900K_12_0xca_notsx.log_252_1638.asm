.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xdc6e, %rcx
cmp $16020, %r14
mov (%rcx), %r15w
nop
add $16001, %rdx
lea addresses_UC_ht+0x175de, %rsi
lea addresses_normal_ht+0x1486e, %rdi
clflush (%rsi)
add %r13, %r13
mov $99, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x186ee, %r14
sub %rsi, %rsi
movb (%r14), %cl
nop
nop
nop
nop
mfence
lea addresses_A_ht+0x96ee, %rsi
nop
nop
nop
and $16988, %rdi
movb (%rsi), %r13b
nop
nop
nop
inc %r13
lea addresses_A_ht+0xa6ae, %rsi
lea addresses_WT_ht+0x1246e, %rdi
nop
nop
nop
nop
nop
sub $63937, %r8
mov $70, %rcx
rep movsw
add %r15, %r15
lea addresses_normal_ht+0x80b5, %rdx
clflush (%rdx)
nop
nop
dec %r8
mov (%rdx), %si
and $26160, %rdi
lea addresses_A_ht+0xc6e7, %rdx
nop
nop
nop
nop
nop
xor %r14, %r14
mov (%rdx), %r13w
nop
nop
nop
nop
nop
add $26605, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %rbx
push %rdx

// Store
lea addresses_WC+0x1404c, %r14
and %r8, %r8
mov $0x5152535455565758, %rdx
movq %rdx, (%r14)

// Exception!!!
nop
nop
nop
mov (0), %rdx
nop
nop
nop
nop
nop
and %r15, %r15

// Store
mov $0x69e, %rdx
nop
and %r12, %r12
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
dec %rbx

// Faulty Load
lea addresses_A+0x1286e, %r12
nop
nop
nop
cmp %r14, %r14
mov (%r12), %rbx
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'00': 252}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
