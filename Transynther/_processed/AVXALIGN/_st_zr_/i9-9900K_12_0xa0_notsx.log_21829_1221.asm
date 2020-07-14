.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x81b4, %rdi
nop
nop
nop
xor %r14, %r14
vmovups (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbp
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_D_ht+0x17d34, %r14
nop
nop
nop
nop
cmp $39593, %rbx
mov $0x6162636465666768, %r11
movq %r11, %xmm1
and $0xffffffffffffffc0, %r14
vmovntdq %ymm1, (%r14)
nop
nop
nop
dec %rbx
lea addresses_normal_ht+0x124f4, %r12
nop
nop
nop
nop
cmp %rbp, %rbp
mov $0x6162636465666768, %r14
movq %r14, %xmm1
and $0xffffffffffffffc0, %r12
vmovaps %ymm1, (%r12)
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_normal_ht+0x16e12, %rsi
lea addresses_D_ht+0x17434, %rdi
nop
and %r14, %r14
mov $57, %rcx
rep movsq
nop
nop
nop
nop
cmp $22873, %r12
lea addresses_D_ht+0xca1c, %rdi
nop
sub %r12, %r12
mov $0x6162636465666768, %rbx
movq %rbx, (%rdi)
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_normal_ht+0x15c34, %rsi
lea addresses_WC_ht+0x7974, %rdi
sub $19156, %rbp
mov $109, %rcx
rep movsl
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x19764, %rsi
lea addresses_UC_ht+0x17a5c, %rdi
dec %rbp
mov $93, %rcx
rep movsl
nop
nop
nop
xor %r14, %r14
lea addresses_A_ht+0x18ff4, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
and $14195, %r12
movl $0x61626364, (%rsi)
nop
nop
nop
nop
sub $18600, %r11
lea addresses_D_ht+0x9d34, %rdi
nop
cmp $24133, %r12
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_normal_ht+0xcd54, %rbp
nop
nop
add $44668, %rcx
movl $0x61626364, (%rbp)
nop
sub %rbp, %rbp
lea addresses_D_ht+0x6fb4, %rsi
lea addresses_D_ht+0x9f80, %rdi
nop
nop
sub $13366, %rbp
mov $116, %rcx
rep movsl
xor %r11, %r11
lea addresses_UC_ht+0xe634, %r12
and $31835, %rsi
movups (%r12), %xmm1
vpextrq $0, %xmm1, %rcx
nop
nop
dec %r11
lea addresses_D_ht+0x154f4, %r14
nop
nop
nop
inc %r11
mov $0x6162636465666768, %rsi
movq %rsi, (%r14)
nop
nop
nop
nop
xor $11818, %rsi
lea addresses_A_ht+0x12db4, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %r11, %r11
movb $0x61, (%rdi)
nop
nop
inc %rdi
lea addresses_normal_ht+0x15a84, %r12
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%r12), %r11w
nop
nop
nop
and %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_PSE+0x1a500, %r14
nop
nop
sub %rdx, %rdx
mov (%r14), %r8d
nop
nop
nop
nop
nop
sub $11056, %rax

// REPMOV
lea addresses_RW+0x1a134, %rsi
lea addresses_D+0x6a34, %rdi
nop
add $62602, %r13
mov $108, %rcx
rep movsq
nop
nop
nop
nop
sub $55126, %rdi

// Store
lea addresses_A+0x5134, %r11
nop
nop
nop
and %rsi, %rsi
movb $0x51, (%r11)
nop
nop
nop
nop
nop
and $19470, %rdx

// Store
lea addresses_UC+0x146b4, %rdi
nop
nop
nop
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %r11
movq %r11, %xmm3
movups %xmm3, (%rdi)
nop
nop
nop
nop
nop
sub $61734, %rsi

// Store
lea addresses_UC+0xd434, %r14
nop
nop
nop
add $57541, %r11
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
dec %r11

// Store
lea addresses_PSE+0x4204, %r14
nop
nop
nop
nop
and %rax, %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovaps %ymm4, (%r14)
add $47896, %rdi

// Store
lea addresses_A+0x18a24, %rax
sub $38189, %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm0
movups %xmm0, (%rax)
inc %r14

// Faulty Load
lea addresses_UC+0xd434, %rcx
nop
nop
nop
nop
nop
dec %r14
movntdqa (%rcx), %xmm1
vpextrq $1, %xmm1, %rsi
lea oracles, %rdx
and $0xff, %rsi
shlq $12, %rsi
mov (%rdx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 32, 'NT': True, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': True}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 3}, 'OP': 'LOAD'}
{'32': 21772, '00': 57}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
