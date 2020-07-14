.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1bd4b, %rsi
sub $9071, %rax
mov $0x6162636465666768, %r9
movq %r9, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
nop
nop
add $11804, %r13
lea addresses_A_ht+0x13e4b, %rsi
lea addresses_UC_ht+0x14f5e, %rdi
nop
nop
nop
nop
nop
sub $22399, %rax
mov $64, %rcx
rep movsb
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_WT_ht+0x1684b, %r13
clflush (%r13)
nop
nop
nop
nop
xor %r15, %r15
mov $0x6162636465666768, %rsi
movq %rsi, (%r13)
xor %r15, %r15
lea addresses_normal_ht+0x1544b, %rsi
lea addresses_normal_ht+0x2bcb, %rdi
nop
nop
nop
nop
nop
add %rax, %rax
mov $106, %rcx
rep movsl
nop
and %rax, %rax
lea addresses_A_ht+0x97b, %rsi
nop
nop
nop
nop
sub $18012, %rax
vmovups (%rsi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0x4c4b, %r13
dec %r9
and $0xffffffffffffffc0, %r13
movntdqa (%r13), %xmm1
vpextrq $0, %xmm1, %r15
nop
nop
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0xc4b, %rcx
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %r15
movq %r15, %xmm1
and $0xffffffffffffffc0, %rcx
vmovaps %ymm1, (%rcx)
nop
sub %r15, %r15
lea addresses_D_ht+0x1844b, %r13
clflush (%r13)
nop
nop
nop
nop
nop
add %r9, %r9
movups (%r13), %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
nop
cmp $61449, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rsi

// Store
lea addresses_A+0x1a44b, %rax
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm6
movups %xmm6, (%rax)
nop
nop
nop
inc %rcx

// Store
lea addresses_UC+0x16d0b, %rcx
nop
nop
nop
xor $5025, %r15
mov $0x5152535455565758, %r11
movq %r11, (%rcx)
and $4656, %rcx

// Store
lea addresses_WC+0x18c7b, %r11
and $31788, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
movups %xmm7, (%r11)
nop
cmp $21482, %rbx

// Store
mov $0x4e842000000000cb, %r15
clflush (%r15)
nop
nop
nop
nop
add $60834, %r13
mov $0x5152535455565758, %r11
movq %r11, %xmm1
movups %xmm1, (%r15)

// Exception!!!
nop
mov (0), %rax
nop
xor %r11, %r11

// Store
lea addresses_A+0x1a44b, %rcx
clflush (%rcx)
nop
nop
nop
and %r15, %r15
mov $0x5152535455565758, %r11
movq %r11, %xmm6
vmovups %ymm6, (%rcx)
cmp %r11, %r11

// Store
lea addresses_WC+0xc64b, %rcx
nop
nop
nop
nop
dec %r13
movl $0x51525354, (%rcx)
nop
nop
nop
nop
add %rsi, %rsi

// Faulty Load
lea addresses_A+0x1a44b, %rax
nop
nop
nop
sub %rcx, %rcx
vmovntdqa (%rax), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r13
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'00': 650}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
