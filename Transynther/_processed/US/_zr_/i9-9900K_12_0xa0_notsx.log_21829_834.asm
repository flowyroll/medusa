.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x76f3, %rsi
lea addresses_D_ht+0x16824, %rdi
nop
nop
nop
xor %rbp, %rbp
mov $39, %rcx
rep movsw
nop
and $11074, %rbx
lea addresses_normal_ht+0x18024, %rbx
nop
nop
sub %r15, %r15
movups (%rbx), %xmm1
vpextrq $1, %xmm1, %rbp
nop
nop
nop
nop
nop
sub $34180, %rbx
lea addresses_D_ht+0x8424, %rsi
lea addresses_normal_ht+0x1eca4, %rdi
nop
add $26334, %rax
mov $118, %rcx
rep movsw
xor %r15, %r15
lea addresses_D_ht+0x19f24, %rsi
lfence
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
movups %xmm5, (%rsi)
nop
nop
nop
cmp $35590, %rax
lea addresses_WT_ht+0x8adb, %rsi
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
add %rax, %rax
lea addresses_D_ht+0x2724, %rsi
nop
nop
nop
nop
nop
cmp $51172, %rax
movb (%rsi), %r15b
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x14e4, %r15
clflush (%r15)
cmp %rsi, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm3
vmovups %ymm3, (%r15)
dec %rbp
lea addresses_UC_ht+0x163a4, %rcx
nop
nop
cmp $4437, %rdi
mov (%rcx), %r15d
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x9e22, %rbx
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
and $0xffffffffffffffc0, %rbx
movntdq %xmm7, (%rbx)
nop
nop
sub $51237, %r15
lea addresses_WC_ht+0x16824, %rdi
add $9696, %r15
mov (%rdi), %eax
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x5a24, %rsi
lea addresses_normal_ht+0x2424, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $54630, %r14
mov $92, %rcx
rep movsl
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_UC_ht+0x15624, %rsi
lea addresses_normal_ht+0x7d24, %rdi
and $62382, %rbx
mov $25, %rcx
rep movsq
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r8
push %r9
push %rcx

// Store
lea addresses_UC+0xc600, %r15
nop
nop
nop
add %r11, %r11
mov $0x5152535455565758, %rcx
movq %rcx, (%r15)
nop
cmp %r15, %r15

// Load
lea addresses_WC+0xa2c4, %r12
clflush (%r12)
cmp $31772, %r14
mov (%r12), %r8
nop
nop
nop
nop
nop
sub $41436, %rcx

// Store
lea addresses_RW+0x18024, %r11
nop
dec %r15
mov $0x5152535455565758, %r9
movq %r9, (%r11)
nop
nop
nop
nop
dec %r15

// Store
lea addresses_D+0x7324, %r12
nop
xor $45485, %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm5
movntdq %xmm5, (%r12)
nop
nop
nop
and $14508, %rcx

// Load
lea addresses_D+0x19b24, %r14
nop
nop
nop
nop
nop
cmp $21777, %r11
mov (%r14), %r8w
nop
nop
add %rcx, %rcx

// Store
lea addresses_normal+0x16a24, %r11
nop
nop
add $4731, %rcx
mov $0x5152535455565758, %r15
movq %r15, (%r11)
nop
add %r14, %r14

// Store
lea addresses_WC+0x19b2b, %r8
nop
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r8)
nop
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_PSE+0x11c50, %rcx
nop
nop
xor %r8, %r8
movw $0x5152, (%rcx)
inc %r14

// Load
lea addresses_WC+0x12997, %r12
nop
nop
cmp %r11, %r11
movups (%r12), %xmm6
vpextrq $1, %xmm6, %r14
nop
nop
add $65463, %r11

// Faulty Load
lea addresses_US+0xc424, %r15
cmp %r14, %r14
mov (%r15), %r12
lea oracles, %r9
and $0xff, %r12
shlq $12, %r12
mov (%r9,%r12,1), %r12
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': True, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': True}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
