.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1736f, %r12
nop
nop
cmp %rsi, %rsi
mov (%r12), %r10w
nop
nop
sub $54014, %rbx
lea addresses_A_ht+0x1a6b4, %r9
nop
dec %r10
movb (%r9), %r13b
nop
nop
dec %r9
lea addresses_A_ht+0xc7f7, %r9
nop
nop
nop
nop
inc %r11
mov (%r9), %r10
nop
nop
dec %r11
lea addresses_UC_ht+0x4767, %rsi
lea addresses_WC_ht+0xcc8b, %rdi
nop
nop
nop
sub %r12, %r12
mov $18, %rcx
rep movsl
nop
nop
nop
nop
and $18238, %rdi
lea addresses_WT_ht+0xac76, %rsi
lea addresses_UC_ht+0x5eb7, %rdi
nop
sub %r12, %r12
mov $48, %rcx
rep movsl
cmp %r12, %r12
lea addresses_D_ht+0x15687, %rsi
lea addresses_A_ht+0x17253, %rdi
sub %r12, %r12
mov $126, %rcx
rep movsb
add %r13, %r13
lea addresses_A_ht+0x100f7, %rsi
lea addresses_A_ht+0x9ff7, %rdi
nop
nop
nop
xor %r9, %r9
mov $82, %rcx
rep movsq
nop
nop
xor $31376, %rsi
lea addresses_UC_ht+0x16ff7, %rsi
lea addresses_A_ht+0xbeb2, %rdi
nop
nop
nop
xor %r11, %r11
mov $94, %rcx
rep movsq
nop
nop
sub $40954, %rcx
lea addresses_UC_ht+0x3af7, %r13
nop
add $31583, %r9
mov (%r13), %r11w
add %rbx, %rbx
lea addresses_WT_ht+0xdaf7, %r12
nop
nop
nop
nop
nop
xor $49051, %r9
mov $0x6162636465666768, %rsi
movq %rsi, (%r12)
nop
add $59828, %r10
lea addresses_normal_ht+0x3f7, %rsi
lea addresses_WT_ht+0x1889d, %rdi
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $42, %rcx
rep movsq
nop
nop
nop
add $57148, %r12
lea addresses_normal_ht+0xe28f, %rcx
nop
nop
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
nop
nop
dec %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r9
push %rax
push %rdi
push %rdx

// Store
lea addresses_RW+0xdbf7, %r9
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r14
movq %r14, (%r9)
nop
nop
nop
xor %r12, %r12

// Store
mov $0x5d401700000000f7, %r14
and %r10, %r10
movl $0x51525354, (%r14)
nop
nop
cmp $21622, %r12

// Load
lea addresses_D+0x170f7, %r10
nop
cmp $21755, %rdi
mov (%r10), %ax
nop
nop
nop
nop
nop
dec %rdx

// Load
lea addresses_US+0x1ff7, %r12
nop
nop
xor %r14, %r14
vmovups (%r12), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r10

// Exception!!!
nop
nop
mov (0), %r14
nop
nop
cmp $57763, %r14

// Load
lea addresses_A+0x1e8b7, %rdi
nop
nop
add $40763, %r10
mov (%rdi), %r9
nop
nop
nop
cmp $39781, %rax

// Store
lea addresses_US+0x130f7, %rdx
nop
nop
nop
nop
nop
sub %r9, %r9
movl $0x51525354, (%rdx)
add $9201, %rdi

// Store
mov $0x45b0100000000837, %r10
nop
nop
nop
nop
nop
cmp $8278, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r10)
nop
nop
nop
nop
cmp %r9, %r9

// Faulty Load
lea addresses_PSE+0x1cff7, %r14
nop
nop
and $42747, %r12
vmovups (%r14), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdx
lea oracles, %r14
and $0xff, %rdx
shlq $12, %rdx
mov (%r14,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'33': 2448}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
