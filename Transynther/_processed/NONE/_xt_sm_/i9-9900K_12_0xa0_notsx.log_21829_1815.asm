.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xb19c, %rbx
nop
nop
nop
nop
sub $13612, %rsi
and $0xffffffffffffffc0, %rbx
vmovaps (%rbx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rax
nop
nop
and %r13, %r13
lea addresses_WC_ht+0x19b1c, %rsi
lea addresses_A_ht+0xe4a, %rdi
nop
add $57988, %rdx
mov $30, %rcx
rep movsw
nop
cmp %rbx, %rbx
lea addresses_UC_ht+0x5054, %rdi
nop
cmp $41776, %rcx
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbx
nop
nop
nop
nop
nop
and $34359, %rax
lea addresses_normal_ht+0x13b9c, %rcx
dec %rbx
mov $0x6162636465666768, %rax
movq %rax, %xmm7
and $0xffffffffffffffc0, %rcx
vmovaps %ymm7, (%rcx)
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x6d6c, %r13
nop
nop
nop
nop
add $24822, %rdx
mov (%r13), %rdi
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x2754, %rsi
lea addresses_A_ht+0x16e9c, %rdi
nop
nop
inc %rax
mov $79, %rcx
rep movsq
nop
nop
cmp %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x8350, %rsi
lea addresses_normal+0x49e, %rdi
nop
nop
nop
nop
nop
add $525, %r10
mov $75, %rcx
rep movsb
nop
and %r11, %r11

// Load
lea addresses_A+0x1bd9c, %r11
nop
nop
add $22078, %rbx
mov (%r11), %rcx
nop
nop
nop
dec %r11

// Load
lea addresses_D+0x739c, %r11
sub $19712, %rsi
movb (%r11), %cl
nop
nop
nop
nop
nop
xor %r10, %r10

// Load
lea addresses_UC+0x1a81c, %rcx
nop
nop
nop
add $41174, %r9
mov (%rcx), %r10d
nop
nop
nop
nop
nop
add %rcx, %rcx

// Store
mov $0x19126400000009cc, %r11
clflush (%r11)
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %r9
movq %r9, %xmm7
vmovups %ymm7, (%r11)
nop
and %r10, %r10

// Store
mov $0x5067dd0000000f84, %r9
clflush (%r9)
nop
nop
nop
xor $34636, %r10
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovaps %ymm1, (%r9)
nop
nop
nop
nop
nop
cmp $44077, %rbx

// Store
lea addresses_D+0x739c, %r11
nop
nop
nop
add $63928, %r9
movl $0x51525354, (%r11)
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_WT+0x1af18, %rbx
nop
nop
nop
nop
and $53422, %r10
movl $0x51525354, (%rbx)

// Exception!!!
nop
mov (0), %rdi
nop
nop
cmp $3972, %rcx

// Load
lea addresses_normal+0x11574, %rsi
nop
nop
nop
nop
and $53988, %r10
mov (%rsi), %r11d
nop
nop
nop
dec %r10

// Faulty Load
lea addresses_D+0x739c, %rsi
nop
nop
nop
nop
add $40873, %r11
mov (%rsi), %r9d
lea oracles, %r10
and $0xff, %r9
shlq $12, %r9
mov (%r10,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': True}}
{'54': 21829}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
