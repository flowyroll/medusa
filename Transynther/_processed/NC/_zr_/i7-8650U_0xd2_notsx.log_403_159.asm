.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x16933, %rsi
lea addresses_normal_ht+0xa3af, %rdi
nop
and $14819, %r11
mov $97, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $21118, %r8
lea addresses_A_ht+0xb8ef, %rsi
lea addresses_WC_ht+0x1152f, %rdi
nop
nop
inc %rax
mov $53, %rcx
rep movsb
add $6347, %r11
lea addresses_D_ht+0x131eb, %rcx
nop
sub %r10, %r10
mov $0x6162636465666768, %r11
movq %r11, %xmm4
and $0xffffffffffffffc0, %rcx
vmovaps %ymm4, (%rcx)
nop
nop
dec %rdi
lea addresses_UC_ht+0x15b67, %rsi
lea addresses_UC_ht+0x90fb, %rdi
nop
nop
nop
nop
nop
add $7981, %rbp
mov $3, %rcx
rep movsw
nop
nop
nop
nop
nop
and $11057, %rcx
lea addresses_normal_ht+0x352f, %rcx
add %rdi, %rdi
mov $0x6162636465666768, %rax
movq %rax, (%rcx)
nop
nop
sub %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rbx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_UC+0xbeef, %rdx
nop
nop
nop
nop
xor %r9, %r9
movb (%rdx), %bl
nop
nop
nop
nop
inc %r15

// Store
lea addresses_PSE+0x18ded, %rdi
nop
nop
nop
nop
xor %r12, %r12
mov $0x5152535455565758, %r15
movq %r15, (%rdi)
nop
nop
nop
nop
nop
add $19269, %r15

// Store
lea addresses_normal+0x17d4f, %rbx
xor $49614, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movups %xmm4, (%rbx)
nop
nop
nop
nop
add $50760, %r15

// Store
lea addresses_WT+0x10caf, %rdx
nop
sub $58638, %r9
movw $0x5152, (%rdx)
nop
nop
sub %rdx, %rdx

// Load
lea addresses_normal+0xccaf, %rdi
nop
nop
cmp %r12, %r12
vmovups (%rdi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdx

// Exception!!!
nop
nop
mov (0), %rdi
nop
nop
add $58649, %r12

// Store
mov $0x4af, %r12
nop
nop
cmp $8248, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movntdq %xmm1, (%r12)
nop
add $4238, %r15

// Store
mov $0x4af, %rsi
inc %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm6
movups %xmm6, (%rsi)
nop
dec %r15

// Store
lea addresses_WT+0xb4af, %rbx
clflush (%rbx)
nop
dec %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movups %xmm3, (%rbx)
nop
nop
nop
and $39391, %r9

// Faulty Load
mov $0xfee490000000caf, %r15
nop
and $50265, %rbx
vmovups (%r15), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rsi
lea oracles, %rbx
and $0xff, %rsi
shlq $12, %rsi
mov (%rbx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'00': 403}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
