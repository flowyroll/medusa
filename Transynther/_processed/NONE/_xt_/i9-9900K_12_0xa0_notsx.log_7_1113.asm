.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x5419, %rsi
lea addresses_WC_ht+0x1d159, %rdi
nop
nop
nop
nop
sub %r10, %r10
mov $78, %rcx
rep movsw
nop
nop
xor $63503, %r15
lea addresses_A_ht+0x1cc19, %r13
nop
nop
nop
add %rax, %rax
movups (%r13), %xmm6
vpextrq $1, %xmm6, %rsi
nop
nop
nop
nop
add %r15, %r15
lea addresses_normal_ht+0x1a759, %rax
nop
xor %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
movups %xmm5, (%rax)
nop
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x12659, %r8
nop
nop
nop
nop
cmp $14227, %r10
movl $0x51525354, (%r8)
nop
nop
nop
add $42828, %rax

// Store
lea addresses_D+0xdb59, %r11
nop
nop
xor $35277, %rax
mov $0x5152535455565758, %rbx
movq %rbx, (%r11)
cmp %rbx, %rbx

// REPMOV
lea addresses_WT+0x15f59, %rsi
lea addresses_D+0xed59, %rdi
nop
nop
nop
nop
add $61641, %r10
mov $4, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rbx

// Load
lea addresses_normal+0xfd9, %rdi
cmp %rsi, %rsi
mov (%rdi), %r10d
nop
nop
nop
nop
nop
cmp %rax, %rax

// Store
mov $0x3b02080000000159, %rcx
sub %r8, %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
nop
nop
cmp $52250, %r11

// Faulty Load
lea addresses_PSE+0x18f59, %r10
nop
nop
nop
nop
add $19771, %rdi
movups (%r10), %xmm2
vpextrq $1, %xmm2, %r13
lea oracles, %rbx
and $0xff, %r13
shlq $12, %r13
mov (%rbx,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WT', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 10}}
{'33': 7}
33 33 33 33 33 33 33
*/
