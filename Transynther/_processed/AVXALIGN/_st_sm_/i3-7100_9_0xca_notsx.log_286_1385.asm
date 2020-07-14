.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xb6de, %rsi
lea addresses_A_ht+0x869e, %rdi
nop
nop
nop
add %r13, %r13
mov $69, %rcx
rep movsb
nop
nop
nop
nop
nop
add $14478, %rax
lea addresses_WC_ht+0x17b1e, %r14
clflush (%r14)
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %rax
movq %rax, (%r14)
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0xff1e, %rdi
nop
nop
dec %r12
mov $0x6162636465666768, %r14
movq %r14, %xmm0
and $0xffffffffffffffc0, %rdi
movaps %xmm0, (%rdi)
nop
nop
cmp %r12, %r12
lea addresses_WC_ht+0x18ede, %rdi
nop
nop
cmp %r14, %r14
vmovups (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
nop
sub $34092, %rdi
lea addresses_UC_ht+0x1709e, %rsi
lea addresses_WC_ht+0x14a5e, %rdi
nop
xor $24227, %r9
mov $94, %rcx
rep movsl
nop
nop
nop
nop
and %r13, %r13
lea addresses_UC_ht+0x719e, %rsi
lea addresses_D_ht+0x86de, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and %r12, %r12
mov $21, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $28313, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0xcf66, %r10
nop
sub $59052, %rcx
mov $0x5152535455565758, %r12
movq %r12, %xmm3
movups %xmm3, (%r10)
nop
nop
nop
inc %r10

// Store
lea addresses_A+0xef9e, %r11
sub %r14, %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%r11)
nop
nop
inc %r12

// REPMOV
lea addresses_D+0x119e, %rsi
lea addresses_normal+0x190ae, %rdi
add %rdx, %rdx
mov $112, %rcx
rep movsw
nop
nop
nop
nop
and %r14, %r14

// Store
lea addresses_WT+0x132fe, %r11
nop
nop
and %r14, %r14
movw $0x5152, (%r11)
nop
nop
nop
nop
nop
and %r11, %r11

// Store
lea addresses_US+0x699e, %r14
clflush (%r14)
nop
nop
nop
nop
and $30276, %r11
movl $0x51525354, (%r14)
nop
cmp %r12, %r12

// Store
lea addresses_WC+0x1c736, %r14
nop
nop
nop
nop
nop
sub $44592, %rsi
movw $0x5152, (%r14)
nop
nop
nop
nop
dec %r12

// Store
lea addresses_normal+0x9872, %r12
nop
nop
nop
nop
and $9756, %rcx
movl $0x51525354, (%r12)
nop
nop
nop
cmp $39515, %rdi

// Store
mov $0x362df70000000fe5, %rdi
nop
nop
nop
and %r12, %r12
mov $0x5152535455565758, %rcx
movq %rcx, (%rdi)
inc %r10

// Store
lea addresses_US+0x1ed1e, %rsi
nop
nop
nop
nop
nop
sub $21611, %r10
mov $0x5152535455565758, %r11
movq %r11, %xmm5
movups %xmm5, (%rsi)
nop
nop
add %r14, %r14

// Load
mov $0xb52, %r12
clflush (%r12)
nop
nop
add %rdx, %rdx
vmovntdqa (%r12), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r14
nop
nop
nop
nop
nop
dec %r12

// Faulty Load
lea addresses_US+0x699e, %r12
xor $38532, %r14
mov (%r12), %esi
lea oracles, %r10
and $0xff, %rsi
shlq $12, %rsi
mov (%r10,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_D', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_P', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'54': 286}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
