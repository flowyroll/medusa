.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x13128, %rdi
nop
nop
nop
nop
nop
and $26996, %rax
mov (%rdi), %r15
cmp $63078, %rdi
lea addresses_WT_ht+0xc672, %rsi
lea addresses_UC_ht+0x5072, %rdi
nop
nop
nop
xor %rdx, %rdx
mov $12, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x194f2, %r15
nop
cmp %r10, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
and $0xffffffffffffffc0, %r15
vmovaps %ymm3, (%r15)
nop
nop
nop
nop
add $30108, %rax
lea addresses_A_ht+0x80f2, %rsi
nop
and %r10, %r10
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
movups %xmm5, (%rsi)
nop
nop
nop
inc %rdx
lea addresses_UC_ht+0xb732, %rsi
lea addresses_A_ht+0x1872, %rdi
add %rbx, %rbx
mov $62, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x16472, %rcx
nop
xor %rbx, %rbx
movl $0x61626364, (%rcx)
add %rbx, %rbx
lea addresses_WT_ht+0x16072, %r10
nop
nop
nop
nop
add $38247, %rbx
movl $0x61626364, (%r10)
nop
nop
nop
nop
nop
add $42451, %rdi
lea addresses_WT_ht+0x10072, %r15
nop
nop
sub $27376, %rdx
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
dec %r10
lea addresses_normal_ht+0x383, %r10
nop
nop
nop
sub %rdi, %rdi
movb (%r10), %al
nop
cmp %rdx, %rdx
lea addresses_UC_ht+0x651a, %rcx
nop
nop
dec %rdx
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
dec %rsi
lea addresses_D_ht+0xd072, %rsi
lea addresses_normal_ht+0x83b2, %rdi
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $96, %rcx
rep movsl
nop
nop
nop
nop
inc %r10
lea addresses_WC_ht+0xe932, %rcx
nop
nop
nop
add %rax, %rax
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%rcx)
nop
add $31192, %rsi
lea addresses_WC_ht+0x1187e, %rcx
nop
nop
nop
nop
add $759, %rsi
mov (%rcx), %rbx
nop
nop
nop
and %rdx, %rdx
lea addresses_D_ht+0x15872, %rsi
lea addresses_D_ht+0x137f2, %rdi
nop
nop
nop
cmp $64228, %rdx
mov $104, %rcx
rep movsb
nop
nop
nop
nop
dec %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rax
push %rbx
push %rsi

// Store
lea addresses_A+0xf872, %r15
nop
nop
sub %rbx, %rbx
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movups %xmm4, (%r15)
nop
nop
nop
nop
xor $29477, %r15

// Store
lea addresses_WC+0x16a72, %r10
nop
nop
nop
nop
cmp $33493, %rax
movw $0x5152, (%r10)
nop
nop
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_WC+0x11872, %rbx
nop
nop
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovups %ymm1, (%rbx)
nop
nop
cmp %r10, %r10

// Faulty Load
lea addresses_A+0xf872, %rax
nop
nop
nop
nop
nop
and %r15, %r15
mov (%rax), %bx
lea oracles, %r10
and $0xff, %rbx
shlq $12, %rbx
mov (%r10,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'58': 23}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
