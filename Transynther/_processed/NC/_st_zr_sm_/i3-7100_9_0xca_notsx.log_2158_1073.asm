.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xb5b, %rdi
cmp $28522, %r11
mov $0x6162636465666768, %rdx
movq %rdx, (%rdi)
nop
nop
xor $58291, %r12
lea addresses_A_ht+0x1d59b, %r12
nop
inc %rbx
vmovups (%r12), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r10
cmp %rbx, %rbx
lea addresses_normal_ht+0x3389, %rbx
nop
nop
xor %rdi, %rdi
movw $0x6162, (%rbx)
nop
nop
nop
nop
nop
and %r11, %r11
lea addresses_A_ht+0x1ddb, %rsi
lea addresses_A_ht+0x123db, %rdi
nop
nop
nop
nop
nop
cmp $1671, %rdx
mov $55, %rcx
rep movsl
nop
nop
add %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r9
push %rbx
push %rcx
push %rsi

// Load
mov $0xeb3, %rsi
nop
and $19260, %rbx
mov (%rsi), %r10w
cmp $29217, %rsi

// Store
lea addresses_WC+0x115a3, %r10
nop
add $35656, %rcx
movb $0x51, (%r10)
nop
add %r10, %r10

// Store
lea addresses_RW+0x4fbb, %r10
nop
nop
and %r9, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
vmovaps %ymm7, (%r10)
add %r9, %r9

// Store
lea addresses_D+0x1b5db, %rcx
nop
nop
inc %r12
movl $0x51525354, (%rcx)
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_PSE+0x1339b, %rsi
nop
nop
nop
xor %r9, %r9
movl $0x51525354, (%rsi)
inc %r11

// Store
mov $0x1df63700000001db, %r12
sub $65260, %rsi
movw $0x5152, (%r12)
add %r9, %r9

// Store
lea addresses_WT+0xc12b, %r10
xor $46709, %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm3
movups %xmm3, (%r10)
nop
nop
inc %r10

// Store
lea addresses_D+0x1995b, %r12
nop
nop
nop
nop
nop
add $37117, %r11
movw $0x5152, (%r12)
nop
nop
nop
nop
and $22403, %rcx

// Store
lea addresses_PSE+0x405b, %r10
nop
xor $20781, %r9
movl $0x51525354, (%r10)
nop
nop
nop
nop
cmp $512, %r11

// Store
lea addresses_UC+0x1219b, %rcx
clflush (%rcx)
nop
nop
sub $64636, %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rcx)
nop
nop
xor %r11, %r11

// Store
lea addresses_normal+0xcddb, %r10
clflush (%r10)
nop
nop
nop
nop
nop
xor %rsi, %rsi
movb $0x51, (%r10)
nop
nop
xor $31789, %r12

// Store
lea addresses_US+0x1a6db, %r9
xor $31791, %r12
movb $0x51, (%r9)
nop
nop
nop
nop
sub $2797, %rbx

// Faulty Load
mov $0x1df63700000001db, %r10
nop
sub $2128, %r11
mov (%r10), %ecx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_P', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_D', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': True}}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'00': 174, '52': 1984}
52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 00 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 00 52 52 00 52 52 52 52 00 00 00 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 00 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 00 52 52 52 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 00 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 00 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52
*/
