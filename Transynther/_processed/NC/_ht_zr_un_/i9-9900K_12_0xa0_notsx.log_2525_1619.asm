.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x474f, %rsi
lea addresses_UC_ht+0x2cef, %rdi
clflush (%rsi)
nop
nop
nop
and $62166, %r9
mov $85, %rcx
rep movsb
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_A_ht+0x7d6f, %rsi
lea addresses_WT_ht+0x965c, %rdi
nop
nop
nop
nop
nop
add $38342, %r15
mov $83, %rcx
rep movsq
nop
nop
add $38753, %r15
lea addresses_UC_ht+0x19b4f, %rsi
nop
nop
nop
nop
nop
and $58767, %r11
mov (%rsi), %r15
nop
nop
and $6536, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x474f, %r10
nop
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm7
movups %xmm7, (%r10)
xor $778, %r10

// REPMOV
lea addresses_WC+0x1274f, %rsi
mov $0x54a20300000000cf, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add %r15, %r15
mov $1, %rcx
rep movsb
nop
nop
nop
inc %r12

// Store
lea addresses_D+0x164ae, %r10
nop
nop
xor $27399, %r8
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
movaps %xmm7, (%r10)
nop
add %rcx, %rcx

// Load
lea addresses_UC+0x9997, %r12
nop
nop
nop
xor %rax, %rax
mov (%r12), %rcx
nop
nop
nop
nop
dec %r8

// Store
mov $0x21a43000000034f, %rax
clflush (%rax)
nop
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm0
vmovups %ymm0, (%rax)
sub %rax, %rax

// Store
mov $0x3f, %rdi
clflush (%rdi)
nop
nop
xor %rcx, %rcx
movw $0x5152, (%rdi)

// Exception!!!
nop
mov (0), %rsi
nop
nop
add %rdi, %rdi

// Store
mov $0x21a43000000034f, %r8
nop
nop
nop
add $8099, %r10
movb $0x51, (%r8)
nop
xor %r15, %r15

// Faulty Load
mov $0x21a43000000034f, %r8
nop
nop
dec %rsi
vmovups (%r8), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
lea oracles, %r15
and $0xff, %rcx
shlq $12, %rcx
mov (%r15,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_WC', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_NC', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'ff': 1, '45': 380, '00': 2144}
00 00 45 00 00 00 45 00 00 00 45 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 45 00 00 45 45 00 45 00 45 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 45 00 00 00 45 00 00 45 00 00 45 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 45 00 45 00 00 00 45 45 00 00 45 00 00 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 45 00 00 00 00 45 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 45 00 45 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 45 00 00 00 00 00 00 45 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 45 00 00 45 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 45 45 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 45 45 00 00 00 00 45 00 00
*/
