.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x18eaf, %rsi
lea addresses_D_ht+0x1d56f, %rdi
nop
nop
nop
add %r15, %r15
mov $29, %rcx
rep movsq
nop
nop
xor %r9, %r9
lea addresses_UC_ht+0x76ef, %r9
nop
nop
nop
nop
cmp $14329, %r11
mov (%r9), %ecx
nop
nop
nop
nop
add %r15, %r15
lea addresses_normal_ht+0x7b63, %rsi
lea addresses_UC_ht+0x19968, %rdi
clflush (%rdi)
nop
sub $17145, %rbp
mov $26, %rcx
rep movsl
nop
and %rsi, %rsi
lea addresses_WT_ht+0x11ee9, %rsi
lea addresses_WC_ht+0x1d0ef, %rdi
nop
nop
nop
nop
xor %rdx, %rdx
mov $94, %rcx
rep movsw
nop
nop
add $35794, %rdx
lea addresses_D_ht+0x130e5, %r11
nop
nop
nop
nop
sub %rdx, %rdx
movb $0x61, (%r11)
add $56766, %rdi
lea addresses_A_ht+0x1ed7, %rcx
nop
nop
nop
sub %r15, %r15
mov $0x6162636465666768, %r9
movq %r9, (%rcx)
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x13b0f, %rbp
nop
nop
nop
inc %rcx
movb (%rbp), %r15b
nop
nop
nop
nop
nop
dec %r9
lea addresses_UC_ht+0x1e60f, %rsi
clflush (%rsi)
nop
nop
nop
inc %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_WC_ht+0x1ed1f, %rdx
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%rdx), %rcx
nop
nop
nop
sub %r15, %r15
lea addresses_normal_ht+0x1a1ef, %rsi
lea addresses_WC_ht+0x8cef, %rdi
sub $8382, %r15
mov $29, %rcx
rep movsq
nop
nop
nop
add $47451, %r9
lea addresses_normal_ht+0x104ef, %rdx
clflush (%rdx)
nop
cmp %rdi, %rdi
mov (%rdx), %ebp
nop
and %r15, %r15
lea addresses_A_ht+0x1553f, %rsi
lea addresses_WT_ht+0x1e4af, %rdi
nop
xor %rdx, %rdx
mov $106, %rcx
rep movsq
nop
add $56346, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0xe4ef, %rcx
nop
add %rbx, %rbx
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
and $369, %r9

// Store
lea addresses_normal+0x1ef, %rbx
nop
nop
nop
nop
add $47570, %rsi
movb $0x51, (%rbx)
nop
sub %rdx, %rdx

// Load
lea addresses_UC+0x146f, %rsi
nop
nop
nop
xor $63492, %r8
vmovups (%rsi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi
nop
nop
nop
nop
nop
and $28372, %rbx

// Store
lea addresses_UC+0xf0ef, %rdi
nop
nop
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
nop
nop
sub $64204, %r8

// REPMOV
lea addresses_A+0x1c7ef, %rsi
lea addresses_D+0x8a87, %rdi
nop
nop
nop
nop
nop
add %r15, %r15
mov $46, %rcx
rep movsw
nop
nop
nop
nop
sub $62943, %r9

// Store
lea addresses_WC+0x1d0ef, %rsi
nop
nop
nop
and $34367, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, (%rsi)
nop
inc %r15

// Store
lea addresses_PSE+0xf8af, %r8
clflush (%r8)
nop
nop
nop
nop
nop
dec %rbx
mov $0x5152535455565758, %r9
movq %r9, %xmm7
movups %xmm7, (%r8)
nop
nop
nop
dec %rdx

// Faulty Load
lea addresses_UC+0xe4ef, %rdi
add %rbx, %rbx
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'37': 656}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
