.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xf127, %r8
nop
nop
dec %r13
mov (%r8), %ebx
nop
nop
nop
nop
nop
add %rax, %rax
lea addresses_normal_ht+0x44d, %rsi
lea addresses_A_ht+0x1a77d, %rdi
cmp $36677, %r11
mov $32, %rcx
rep movsl
and $41550, %rbx
lea addresses_WC_ht+0x70dd, %rsi
lea addresses_normal_ht+0x9835, %rdi
nop
nop
nop
nop
sub $14565, %rax
mov $73, %rcx
rep movsb
nop
add $55615, %rax
lea addresses_D_ht+0xb04d, %rsi
nop
nop
dec %r13
vmovups (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
cmp %r8, %r8
lea addresses_UC_ht+0x1c1ad, %rsi
lea addresses_A_ht+0x1aead, %rdi
nop
inc %rbx
mov $116, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r11, %r11
lea addresses_UC_ht+0x24ad, %rsi
nop
nop
and $12323, %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%rsi)
nop
nop
nop
nop
nop
and $10724, %rdi
lea addresses_D_ht+0x7e4d, %rax
nop
nop
dec %rsi
and $0xffffffffffffffc0, %rax
movaps (%rax), %xmm5
vpextrq $0, %xmm5, %rbx
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_UC_ht+0x3a4d, %rax
nop
nop
nop
nop
add %rbx, %rbx
mov $0x6162636465666768, %r11
movq %r11, (%rax)
inc %rsi
lea addresses_normal_ht+0xd9e1, %rsi
lea addresses_normal_ht+0x127f, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $46263, %rax
mov $39, %rcx
rep movsl
nop
lfence
lea addresses_WT_ht+0xec4d, %r8
nop
nop
inc %rcx
mov (%r8), %r13
nop
nop
nop
add $32292, %r8
lea addresses_WC_ht+0x1a429, %rsi
lea addresses_D_ht+0x7a4d, %rdi
clflush (%rsi)
clflush (%rdi)
nop
cmp %r8, %r8
mov $109, %rcx
rep movsw
nop
nop
nop
nop
and $18735, %r13
lea addresses_A_ht+0xf1cd, %rsi
nop
and %r13, %r13
movb (%rsi), %bl
nop
nop
nop
nop
nop
cmp $40696, %r11
lea addresses_WC_ht+0x160f5, %rsi
lea addresses_WT_ht+0x984d, %rdi
nop
nop
nop
sub $24453, %r8
mov $4, %rcx
rep movsq
nop
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x1e54d, %rcx
nop
nop
nop
nop
nop
cmp $22362, %rbx
vmovups (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r8
nop
and %r11, %r11
lea addresses_UC_ht+0x904d, %r13
nop
nop
add $15866, %rdi
movl $0x61626364, (%r13)
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %rbp
push %rbx
push %rcx

// Store
lea addresses_UC+0xdc33, %rbp
nop
nop
nop
nop
nop
xor $22844, %rbx
movw $0x5152, (%rbp)
nop
cmp $25429, %r14

// Store
lea addresses_A+0x1844d, %r13
sub %r11, %r11
movl $0x51525354, (%r13)
sub %r11, %r11

// Load
lea addresses_WT+0xd74d, %rbp
nop
nop
nop
nop
cmp %r10, %r10
mov (%rbp), %r13d
nop
nop
nop
nop
sub $31408, %r10

// Faulty Load
lea addresses_A+0x1844d, %rbp
nop
xor %r11, %r11
movb (%rbp), %bl
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'54': 18}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
