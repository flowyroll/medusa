.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x15b66, %rsi
lea addresses_WC_ht+0x1d502, %rdi
nop
add $48232, %rdx
mov $15, %rcx
rep movsb
nop
nop
inc %r9
lea addresses_WT_ht+0x20a6, %r12
clflush (%r12)
cmp $18983, %r13
movl $0x61626364, (%r12)
dec %rsi
lea addresses_WC_ht+0x183a2, %rsi
nop
sub %r12, %r12
mov $0x6162636465666768, %r13
movq %r13, %xmm0
vmovups %ymm0, (%rsi)
inc %rdx
lea addresses_D_ht+0x84a2, %r13
clflush (%r13)
nop
nop
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %r12
movq %r12, (%r13)
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0xa8a2, %rsi
lea addresses_UC_ht+0x23a2, %rdi
sub $36867, %rbp
mov $82, %rcx
rep movsw
nop
nop
add $27973, %rdi
lea addresses_D_ht+0xebe2, %rsi
lea addresses_A_ht+0x1b8a2, %rdi
nop
nop
nop
nop
xor %rdx, %rdx
mov $52, %rcx
rep movsb
nop
nop
nop
cmp $21305, %rdx
lea addresses_WT_ht+0x17be8, %rsi
lea addresses_WT_ht+0x76a2, %rdi
nop
nop
nop
nop
add %r13, %r13
mov $77, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_WT_ht+0x12ea2, %r12
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
and $0xffffffffffffffc0, %r12
movntdq %xmm6, (%r12)
nop
nop
nop
sub %r9, %r9
lea addresses_WT_ht+0xeae2, %r9
nop
nop
nop
xor $16972, %r13
mov $0x6162636465666768, %rbp
movq %rbp, (%r9)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x176a2, %r13
nop
sub $16815, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r13)
nop
nop
nop
nop
nop
xor $9277, %rsi
lea addresses_normal_ht+0x1b5a2, %rdx
nop
nop
nop
add $58626, %rcx
movl $0x61626364, (%rdx)
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0xaea2, %rsi
lea addresses_normal_ht+0x1d9c2, %rdi
dec %rdx
mov $35, %rcx
rep movsw
nop
xor %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rsi

// Load
lea addresses_WC+0x10ea2, %rsi
nop
nop
nop
nop
add %r11, %r11
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %rdi
nop
xor %rcx, %rcx

// Load
mov $0xea2, %r11
nop
and $63638, %r15
mov (%r11), %rcx
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_WT+0x9a86, %rdi
and $17217, %r14
movw $0x5152, (%rdi)
nop
nop
nop
nop
inc %r11

// Store
lea addresses_US+0xc642, %rcx
clflush (%rcx)
cmp $38005, %r11
mov $0x5152535455565758, %rsi
movq %rsi, (%rcx)
nop
xor %r12, %r12

// Store
mov $0x4ec, %rcx
nop
inc %r14
movw $0x5152, (%rcx)
nop
cmp $1761, %rsi

// Store
mov $0xd52, %rsi
nop
nop
nop
nop
nop
add %r11, %r11
mov $0x5152535455565758, %r12
movq %r12, (%rsi)
nop
nop
nop
and $6010, %r11

// Store
lea addresses_normal+0x5ff2, %rdi
nop
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm5
vmovups %ymm5, (%rdi)
xor %r11, %r11

// Faulty Load
mov $0x1336b70000000ea2, %rdi
nop
add $27020, %r14
vmovups (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r11
lea oracles, %rsi
and $0xff, %r11
shlq $12, %r11
mov (%rsi,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_P', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_P', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_P', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': True}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'46': 21803, '00': 24, '49': 2}
00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46
*/
