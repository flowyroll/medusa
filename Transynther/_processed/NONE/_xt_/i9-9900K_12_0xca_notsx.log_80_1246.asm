.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1e5ae, %rbx
sub %r8, %r8
movb $0x61, (%rbx)
nop
nop
add %r9, %r9
lea addresses_WC_ht+0x21ce, %rcx
nop
and %r13, %r13
mov (%rcx), %r8
nop
nop
nop
nop
nop
add $19096, %rax
lea addresses_D_ht+0x1584e, %rcx
nop
sub $25218, %r10
vmovups (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r13
nop
nop
nop
xor $40328, %r13
lea addresses_D_ht+0x1526e, %rsi
lea addresses_WC_ht+0x1516e, %rdi
nop
nop
nop
nop
inc %rbx
mov $48, %rcx
rep movsq
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0x1cb56, %rdi
nop
nop
nop
add %r9, %r9
mov (%rdi), %si
nop
nop
nop
nop
cmp %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rbx
push %rdi

// Load
mov $0x30070d00000002ce, %rdi
and %r12, %r12
movb (%rdi), %r13b
nop
nop
nop
dec %r12

// Store
lea addresses_normal+0x38ee, %rbx
nop
xor %r15, %r15
movl $0x51525354, (%rbx)

// Exception!!!
nop
nop
nop
nop
mov (0), %r15
nop
nop
cmp %rbx, %rbx

// Faulty Load
lea addresses_PSE+0x1da6e, %rbx
clflush (%rbx)
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%rbx), %r8d
lea oracles, %r13
and $0xff, %r8
shlq $12, %r8
mov (%r13,%r8,1), %r8
pop %rdi
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'33': 80}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
