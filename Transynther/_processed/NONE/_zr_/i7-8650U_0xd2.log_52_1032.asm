.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xc8c1, %rsi
lea addresses_D_ht+0x150c1, %rdi
clflush (%rdi)
nop
nop
nop
and $12834, %rax
mov $35, %rcx
rep movsl
nop
add $57159, %r15
lea addresses_WT_ht+0x15ac1, %rbp
nop
and %r12, %r12
mov (%rbp), %edi
nop
nop
inc %rcx
lea addresses_A_ht+0x1e225, %rsi
lea addresses_A_ht+0x1d64d, %rdi
nop
nop
xor %r15, %r15
mov $112, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x1421e, %rdi
nop
nop
nop
nop
nop
add $59799, %r12
movb (%rdi), %cl
cmp $41271, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r14
push %rbx
push %rdi

// Store
lea addresses_WC+0x14ec1, %r10
nop
nop
nop
nop
nop
add $26761, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, (%r10)
nop
nop
and $25672, %rdi

// Store
lea addresses_PSE+0x1eec1, %r14
nop
nop
nop
dec %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm3
vmovups %ymm3, (%r14)
xor %r10, %r10

// Store
lea addresses_UC+0x3ec1, %r13
nop
nop
sub $3610, %r12
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r13)
nop
nop
nop
nop
nop
sub %r12, %r12

// Store
lea addresses_D+0x6ec9, %rdi
nop
nop
nop
nop
nop
and %r14, %r14
movl $0x51525354, (%rdi)

// Exception!!!
mov (0), %r11
nop
nop
nop
sub %r12, %r12

// Store
mov $0x28e5ad0000000845, %rbx
nop
nop
nop
sub %rdi, %rdi
movw $0x5152, (%rbx)
nop
nop
dec %r12

// Store
lea addresses_normal+0x1301, %rbx
nop
nop
nop
nop
nop
add %r14, %r14
mov $0x5152535455565758, %r13
movq %r13, (%rbx)
and %rbx, %rbx

// Faulty Load
lea addresses_UC+0x3ec1, %r11
clflush (%r11)
nop
nop
nop
sub %r14, %r14
vmovups (%r11), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r13
lea oracles, %rbx
and $0xff, %r13
shlq $12, %r13
mov (%rbx,%r13,1), %r13
pop %rdi
pop %rbx
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'00': 52}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
