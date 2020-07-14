.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xb524, %rsi
lea addresses_UC_ht+0x1ce04, %rdi
dec %rbp
mov $70, %rcx
rep movsw
nop
nop
nop
and $16535, %r10
lea addresses_D_ht+0x1b424, %r10
clflush (%r10)
nop
nop
nop
nop
xor %rbp, %rbp
mov (%r10), %rdi
nop
nop
nop
nop
xor $4959, %rcx
lea addresses_UC_ht+0xc3a4, %rbx
inc %r9
movl $0x61626364, (%rbx)
and %r9, %r9
lea addresses_D_ht+0x1a424, %rsi
lea addresses_UC_ht+0x1259e, %rdi
nop
nop
dec %rdx
mov $110, %rcx
rep movsb
xor $15498, %rdx
lea addresses_D_ht+0x17a5b, %rsi
lea addresses_WC_ht+0x1cc24, %rdi
clflush (%rdi)
nop
nop
xor $6678, %r9
mov $115, %rcx
rep movsl
nop
nop
cmp %rbp, %rbp
lea addresses_UC_ht+0x5924, %r10
nop
nop
nop
nop
cmp $1683, %rcx
movl $0x61626364, (%r10)
nop
and %rdx, %rdx
lea addresses_UC_ht+0x159a4, %rsi
lea addresses_UC_ht+0x1864, %rdi
nop
nop
nop
nop
sub %rbp, %rbp
mov $89, %rcx
rep movsw
nop
nop
nop
nop
sub $34102, %rdx
lea addresses_normal_ht+0x1c424, %rdi
clflush (%rdi)
nop
and %rbp, %rbp
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
inc %rdi
lea addresses_A_ht+0x8b7c, %rdx
nop
nop
nop
cmp %rdi, %rdi
movw $0x6162, (%rdx)
nop
nop
add $44818, %r9
lea addresses_normal_ht+0x13bfe, %rsi
lea addresses_UC_ht+0x18a24, %rdi
nop
nop
nop
nop
nop
dec %rbx
mov $43, %rcx
rep movsw
nop
xor $56662, %rdi
lea addresses_A_ht+0x6424, %rsi
lea addresses_WC_ht+0xef7a, %rdi
sub $38313, %rdx
mov $11, %rcx
rep movsw
nop
add %rbp, %rbp
lea addresses_WT_ht+0x18b74, %rbp
nop
nop
add %rsi, %rsi
mov (%rbp), %r9w
nop
nop
nop
nop
xor $61159, %rdi
lea addresses_WC_ht+0x8c24, %rsi
lea addresses_D_ht+0x7c24, %rdi
sub $4250, %rdx
mov $87, %rcx
rep movsw
nop
nop
cmp $56603, %r10
lea addresses_normal_ht+0x1c5a0, %r9
nop
nop
nop
nop
nop
cmp %rcx, %rcx
vmovups (%r9), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbx
nop
nop
nop
sub $55563, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %rax
push %rbp
push %rdi
push %rdx
push %rsi

// Load
lea addresses_A+0x10244, %rbp
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov (%rbp), %rsi
nop
nop
nop
nop
nop
sub %rdx, %rdx

// Load
lea addresses_US+0x1a454, %r11
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov (%r11), %rax
cmp $49780, %rdx

// Store
lea addresses_WC+0x2334, %rdx
nop
nop
add $35507, %r15
movw $0x5152, (%rdx)
nop
nop
nop
nop
add $32908, %rsi

// Faulty Load
lea addresses_RW+0x17424, %r11
nop
nop
nop
add %rdi, %rdi
mov (%r11), %rdx
lea oracles, %r11
and $0xff, %rdx
shlq $12, %rdx
mov (%r11,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'32': 1}
32
*/
