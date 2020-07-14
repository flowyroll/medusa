.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x4e30, %rsi
lea addresses_UC_ht+0x2095, %rdi
clflush (%rsi)
nop
nop
nop
dec %rax
mov $29, %rcx
rep movsq
nop
nop
nop
nop
inc %rsi
lea addresses_A_ht+0x8c58, %rsi
lea addresses_WC_ht+0x128d0, %rdi
nop
nop
nop
nop
nop
and $970, %r8
mov $63, %rcx
rep movsl
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0xc48, %rsi
lea addresses_WC_ht+0x9830, %rdi
nop
nop
nop
and $17234, %r11
mov $88, %rcx
rep movsw
nop
cmp $21352, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rsi

// Store
lea addresses_RW+0x19130, %r13
nop
nop
cmp $55493, %rcx
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovups %ymm0, (%r13)
nop
nop
nop
and $31606, %r13

// Store
lea addresses_UC+0x15030, %rsi
add %rbp, %rbp
mov $0x5152535455565758, %r15
movq %r15, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
dec %rax

// Faulty Load
mov $0x11e1a00000000830, %r11
nop
nop
add %r13, %r13
vmovups (%r11), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'44': 1131, '45': 17610, 'ff': 1, '46': 3085, 'b8': 1, '00': 1}
00 45 46 45 45 45 46 45 45 45 44 45 45 45 45 45 45 45 46 45 45 45 46 45 45 45 45 46 45 45 45 45 44 45 45 45 45 45 44 46 44 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 46 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 44 45 45 46 45 45 45 46 45 45 45 45 46 45 46 45 45 45 46 45 45 45 46 45 46 44 45 45 45 46 45 46 45 46 45 45 46 45 44 45 45 45 46 46 45 45 45 44 45 45 46 45 45 45 45 46 45 45 45 45 45 45 45 45 46 45 46 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 44 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 46 45 46 45 44 45 45 45 45 44 45 45 46 45 44 45 45 46 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 46 45 45 44 45 45 46 45 44 45 46 46 45 45 46 45 45 45 45 45 45 46 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 46 46 46 46 44 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 44 45 46 46 45 45 45 45 45 45 45 45 45 44 45 45 46 45 45 45 45 46 45 44 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 46 45 45 45 46 45 45 45 44 46 45 45 45 45 45 46 45 45 46 46 45 45 46 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 46 45 45 45 45 45 46 45 45 45 45 45 45 45 46 45 44 45 45 44 45 46 45 45 45 45 45 45 45 46 45 46 45 45 45 45 45 46 45 45 45 45 44 45 45 45 46 45 46 45 45 45 45 45 45 45 45 45 45 45 45 46 45 46 45 45 46 45 45 45 45 45 44 45 45 44 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 46 45 44 45 44 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 46 45 45 45 46 45 45 45 45 45 46 45 45 45 45 44 45 45 46 45 45 45 45 46 45 45 45 45 46 45 45 45 45 44 45 45 45 45 44 45 45 45 45 44 45 44 45 45 45 45 45 45 45 46 45 44 45 45 45 45 45 45 46 45 45 45 46 45 44 45 46 46 45 45 45 46 45 45 46 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 44 45 45 45 46 45 46 45 45 46 45 46 45 46 44 45 46 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 46 44 45 45 46 45 45 44 45 45 46 45 45 45 45 45 46 45 45 45 46 45 45 45 46 45 46 45 45 44 45 45 45 45 44 45 45 45 45 45 45 45 45 45 46 46 44 45 45 45 45 46 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 46 45 44 45 44 46 45 45 45 45 45 45 45 45 45 46 45 44 45 46 45 45 45 45 45 45 45 45 46 45 45 45 46 45 46 45 45 45 45 45 45 45 45 45 45 45 46 45 46 45 46 45 45 45 45 45 46 46 45 45 45 45 45 46 45 45 46 45 45 45 45 45 45 45 45 45 46 44 45 45 45 45 45 45 45 45 45 45 44 45 46 44 45 45 46 45 45 45 45 45 45 46 45 45 46 45 45 46 45 46 45 45 45 45 45 45 45 44 45 44 45 45 45 45 45 45 44 45 45 46 45 45 45 45 45 45 45 44 46 45 44 45 44 46 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 44 45 45 46 45 45 45 45 46 45 44 45 45 45 46 45 45 45 46 45 45 45 45 46 45 46 45 46 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 44 45 45 45 45 46 45 45 45 44 45 45 46 45 44 45 45 46 45 45 45 45 44 45 45 45 44 45 46 45 45 45 45 45 45 45 45 45 46 45 45 44 44 45 45 45 45 45 45 45 46 45 45 45 45 45 44 45 45 45 46 45 45 45 45
*/
