.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x132ed, %rsi
lea addresses_WC_ht+0x14f0a, %rdi
nop
nop
nop
nop
xor %r14, %r14
mov $56, %rcx
rep movsq
nop
nop
nop
nop
inc %r15
lea addresses_WT_ht+0x12fdf, %rsi
lea addresses_normal_ht+0x17b25, %rdi
nop
nop
nop
nop
sub $15342, %r11
mov $65, %rcx
rep movsq
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x14725, %rsi
nop
nop
nop
and $56500, %rax
movw $0x6162, (%rsi)
add $40641, %rcx
lea addresses_D_ht+0xff25, %rdi
nop
sub %r11, %r11
mov (%rdi), %r14d
nop
cmp $30241, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r8
push %rbp
push %rsi

// Load
lea addresses_normal+0x600d, %r12
nop
nop
nop
nop
add %rsi, %rsi
mov (%r12), %r14w
nop
inc %r10

// Load
mov $0x5cca4b0000000f25, %r14
nop
nop
nop
sub $59682, %r8
movb (%r14), %r12b
add $53095, %r14

// Store
mov $0x5cca4b0000000f25, %r11
inc %r14
mov $0x5152535455565758, %r10
movq %r10, %xmm4
vmovups %ymm4, (%r11)
nop
nop
nop
and $37512, %r11

// Store
lea addresses_WT+0x16f25, %r10
nop
nop
nop
dec %rsi
mov $0x5152535455565758, %rbp
movq %rbp, (%r10)
xor $31081, %rsi

// Store
mov $0xd25, %r11
clflush (%r11)
nop
nop
nop
nop
sub %r14, %r14
movl $0x51525354, (%r11)
dec %rsi

// Store
lea addresses_RW+0x2112, %rsi
nop
nop
nop
nop
cmp %r14, %r14
movw $0x5152, (%rsi)
add $9981, %rbp

// Store
lea addresses_WT+0xee45, %rsi
nop
xor $42254, %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm0
movups %xmm0, (%rsi)
nop
nop
nop
nop
nop
cmp $33376, %r8

// Store
mov $0x5cca4b0000000f25, %r11
nop
sub %r8, %r8
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
movups %xmm4, (%r11)
nop
nop
xor $23001, %r8

// Store
lea addresses_WC+0x10041, %r11
nop
nop
xor %r14, %r14
movl $0x51525354, (%r11)
nop
nop
nop
dec %rbp

// Faulty Load
mov $0x5cca4b0000000f25, %r11
nop
nop
sub $24013, %r10
movaps (%r11), %xmm7
vpextrq $0, %xmm7, %rsi
lea oracles, %rbp
and $0xff, %rsi
shlq $12, %rsi
mov (%rbp,%rsi,1), %rsi
pop %rsi
pop %rbp
pop %r8
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': True, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'00': 3, '58': 10}
58 58 58 58 00 00 58 58 00 58 58 58 58
*/
