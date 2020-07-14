.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xf262, %r8
nop
nop
nop
nop
sub $25018, %rbp
movb $0x61, (%r8)
nop
cmp %r12, %r12
lea addresses_UC_ht+0x14926, %rax
nop
nop
xor $25998, %r14
mov (%rax), %dx
nop
nop
nop
nop
sub $43, %r14
lea addresses_normal_ht+0xc0ae, %rdx
clflush (%rdx)
nop
cmp $8852, %r12
movw $0x6162, (%rdx)
nop
nop
nop
nop
nop
xor $18241, %rdx
lea addresses_normal_ht+0x169ae, %r8
nop
inc %r14
mov (%r8), %rax
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_UC_ht+0x8c9a, %rsi
lea addresses_WT_ht+0x1e60a, %rdi
nop
nop
nop
sub $49390, %r14
mov $12, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0xc44e, %rsi
lea addresses_UC_ht+0x16c5e, %rdi
inc %r12
mov $60, %rcx
rep movsw
nop
nop
nop
nop
nop
add $56671, %rax
lea addresses_UC_ht+0x1235e, %rbp
nop
nop
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %r11
movq %r11, (%rbp)
add $28008, %rdx
lea addresses_D_ht+0x5b90, %rsi
lea addresses_normal_ht+0x69ae, %rdi
nop
nop
nop
nop
nop
inc %r12
mov $85, %rcx
rep movsb
nop
nop
nop
add $21886, %rax
lea addresses_A_ht+0x102de, %rsi
lea addresses_D_ht+0x1e18e, %rdi
clflush (%rdi)
xor %rbp, %rbp
mov $66, %rcx
rep movsq
nop
cmp $8839, %r14
lea addresses_UC_ht+0x1a1ae, %rsi
lea addresses_A_ht+0x1aafe, %rdi
nop
nop
nop
and $32335, %rax
mov $59, %rcx
rep movsw
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0xc9ae, %rsi
lea addresses_WC_ht+0xd9ae, %rdi
nop
nop
nop
nop
dec %rbp
mov $86, %rcx
rep movsw
nop
cmp $62601, %r12
lea addresses_UC_ht+0x99ae, %rdi
nop
nop
lfence
mov $0x6162636465666768, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
xor %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rsi

// Store
mov $0x8ce, %rbp
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, (%rbp)
nop
nop
nop
and $52006, %rsi

// Store
lea addresses_D+0xd9ae, %rsi
sub $10721, %r11
movw $0x5152, (%rsi)
nop
nop
nop
nop
cmp $35164, %rcx

// Store
mov $0x7a1a68000000001a, %rax
nop
nop
nop
nop
nop
sub %rsi, %rsi
movw $0x5152, (%rax)

// Exception!!!
mov (0), %rsi
xor $18805, %rsi

// Store
lea addresses_PSE+0x101ae, %rbx
nop
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %rcx
movq %rcx, (%rbx)
nop
nop
nop
and $10932, %rsi

// Store
lea addresses_RW+0x1d250, %r11
nop
nop
nop
add %rbx, %rbx
movb $0x51, (%r11)
nop
nop
nop
nop
cmp $20539, %rbp

// Store
lea addresses_WC+0xe4ae, %rax
cmp $8897, %rbx
movb $0x51, (%rax)
nop
nop
nop
nop
xor %r11, %r11

// Load
mov $0x3ae, %rcx
clflush (%rcx)
nop
nop
and %rax, %rax
mov (%rcx), %ebx
nop
nop
nop
nop
cmp %r11, %r11

// Faulty Load
lea addresses_PSE+0x101ae, %rcx
nop
nop
nop
nop
inc %rbx
mov (%rcx), %r11w
lea oracles, %r15
and $0xff, %r11
shlq $12, %r11
mov (%r15,%r11,1), %r11
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'58': 797}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
