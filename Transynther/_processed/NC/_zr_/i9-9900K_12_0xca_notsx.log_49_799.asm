.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1369, %rsi
lea addresses_WC_ht+0x1b009, %rdi
nop
nop
sub %r12, %r12
mov $9, %rcx
rep movsl
dec %rbx
lea addresses_WT_ht+0x10f69, %r12
nop
nop
and %rcx, %rcx
movups (%r12), %xmm1
vpextrq $0, %xmm1, %rdi
nop
nop
nop
nop
nop
xor $30505, %rdi
lea addresses_A_ht+0x1df49, %r13
nop
nop
nop
nop
nop
dec %r9
movw $0x6162, (%r13)
nop
nop
nop
nop
nop
add $28090, %rcx
lea addresses_D_ht+0x9309, %rcx
nop
nop
nop
nop
xor %r13, %r13
movb $0x61, (%rcx)
nop
dec %rdi
lea addresses_WC_ht+0xd609, %rcx
nop
nop
nop
xor $43433, %r12
mov (%rcx), %edi
nop
nop
nop
nop
nop
inc %r9
lea addresses_D_ht+0x4509, %rbx
add $27754, %r9
movb (%rbx), %cl
nop
nop
add $47889, %rdi
lea addresses_WC_ht+0x14fb1, %rbx
nop
nop
cmp $34534, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm5
movups %xmm5, (%rbx)
nop
nop
nop
and $27172, %rcx
lea addresses_D_ht+0x10e09, %r12
nop
nop
nop
nop
nop
dec %rcx
mov (%r12), %bx
nop
inc %rcx
lea addresses_WT_ht+0x3809, %r13
nop
nop
nop
mfence
mov $0x6162636465666768, %r12
movq %r12, %xmm5
movups %xmm5, (%r13)
nop
nop
nop
nop
and %r9, %r9
lea addresses_UC_ht+0xa2a9, %r12
nop
nop
cmp $33725, %rdi
mov (%r12), %rcx
inc %r13
lea addresses_WT_ht+0x14789, %rsi
clflush (%rsi)
nop
nop
nop
nop
dec %rbx
movb $0x61, (%rsi)
nop
nop
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rbp
push %rbx
push %rdi

// Store
lea addresses_UC+0x12995, %r13
add $63080, %rdi
movl $0x51525354, (%r13)
nop
and %r15, %r15

// Faulty Load
mov $0x62cd020000000e09, %r13
dec %rdi
vmovups (%r13), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r15
lea oracles, %r13
and $0xff, %r15
shlq $12, %r15
mov (%r13,%r15,1), %r15
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'00': 49}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
