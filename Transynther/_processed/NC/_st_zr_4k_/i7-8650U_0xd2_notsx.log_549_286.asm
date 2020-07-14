.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1a7ce, %rsi
lea addresses_normal_ht+0x1ad7e, %rdi
nop
xor %rdx, %rdx
mov $74, %rcx
rep movsb
nop
nop
nop
nop
add $27987, %rax
lea addresses_D_ht+0x636, %rdi
nop
nop
add %r14, %r14
mov (%rdi), %esi
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WT_ht+0x14d7e, %rsi
lea addresses_WT_ht+0x37ee, %rdi
nop
inc %rbx
mov $4, %rcx
rep movsb
nop
nop
nop
nop
xor $20784, %rax
lea addresses_normal_ht+0x1edd6, %rsi
lea addresses_D_ht+0x1123e, %rdi
clflush (%rsi)
nop
xor $3015, %r11
mov $22, %rcx
rep movsb
nop
and $43018, %rsi
lea addresses_A_ht+0x107e, %rsi
lea addresses_D_ht+0x1ae3e, %rdi
mfence
mov $115, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0x1a4fe, %rdx
nop
nop
nop
cmp $65067, %rcx
movw $0x6162, (%rdx)
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0xac7e, %rdx
nop
nop
nop
inc %rbx
mov (%rdx), %esi
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x191fe, %r14
nop
nop
nop
nop
and $43816, %rbx
movb $0x61, (%r14)
nop
nop
nop
dec %rdx
lea addresses_A_ht+0x1c87e, %rdx
nop
nop
and $36880, %r14
movw $0x6162, (%rdx)
nop
nop
nop
and %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x1517e, %r8
nop
nop
inc %rax
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_normal+0xafbe, %rdi
nop
nop
add %rax, %rax
movl $0x51525354, (%rdi)
nop
and %rdi, %rdi

// REPMOV
lea addresses_WC+0x247e, %rsi
lea addresses_A+0x1d300, %rdi
clflush (%rsi)
nop
nop
xor $25788, %r9
mov $76, %rcx
rep movsw
nop
nop
dec %rsi

// Store
lea addresses_D+0x153ac, %rdi
nop
nop
dec %rbx
mov $0x5152535455565758, %rcx
movq %rcx, (%rdi)
nop
nop
dec %rcx

// Store
lea addresses_UC+0x1b83e, %r8
dec %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm1
movaps %xmm1, (%r8)
nop
nop
nop
dec %rbx

// Store
lea addresses_D+0x65f6, %r8
nop
nop
sub $4977, %r11
mov $0x5152535455565758, %rsi
movq %rsi, (%r8)
xor $11005, %rbx

// Store
lea addresses_UC+0x3b7e, %rdi
dec %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm3
vmovups %ymm3, (%rdi)
nop
nop
nop
nop
nop
cmp $39823, %rax

// Store
lea addresses_PSE+0x1807e, %rsi
add %r11, %r11
movl $0x51525354, (%rsi)
and %rdi, %rdi

// Store
mov $0x2c41140000000f2e, %r11
xor $46798, %rdi
movb $0x51, (%r11)
nop
nop
cmp $5517, %r9

// Store
lea addresses_WC+0xbd52, %r9
nop
dec %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
movaps %xmm4, (%r9)
nop
nop
nop
nop
dec %rsi

// Faulty Load
mov $0x2eb359000000007e, %r9
nop
cmp %r11, %r11
mov (%r9), %ecx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'54': 422, '00': 127}
54 54 54 54 54 54 54 00 54 54 00 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 00 00 54 00 54 54 00 54 00 00 00 54 00 00 54 54 54 54 54 54 54 54 54 00 54 54 00 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 00 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 00 00 54 54 54 54 54 54 00 00 00 54 00 00 00 54 00 00 54 00 00 54 00 54 54 54 00 00 00 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 00 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 00 54 54 54 54 54 54 54 54 54 00 54 00 54 00 54 54 00 54 00 54 54 54 54 54 00 54 54 00 00 54 54 54 00 54 00 54 54 00 54 54 54 00 54 54 54 00 54 54 54 54 54 00 00 54 54 00 00 54 00 00 54 54 00 54 00 00 54 54 00 54 54 54 54 54 54 54 00 54 54 00 54 54 54 00 00 00 54 54 54 54 54 54 54 00 54 00 54 54 00 54 00 54 54 00 00 54 54 54 54 00 54 54 54 00 00 54 54 54 54 00 54 00 00 54 00 54 54 54 00 00 54 54 54 54 00 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 00 00 54 54 54 54 54 54 54 54 00 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 00 54 54 54 54 54 54 54 00 54 00 00 00 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 00 54 54 54 54
*/
