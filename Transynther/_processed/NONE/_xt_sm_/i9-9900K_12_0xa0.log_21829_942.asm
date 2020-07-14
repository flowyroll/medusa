.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1a1db, %rsi
lea addresses_A_ht+0x12653, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %rax, %rax
mov $22, %rcx
rep movsw
nop
nop
nop
nop
nop
and $43713, %rsi
lea addresses_WT_ht+0x17f53, %rdi
nop
nop
nop
xor $2214, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm0
movups %xmm0, (%rdi)
xor %rdi, %rdi
lea addresses_WT_ht+0x3ad3, %rsi
lea addresses_A_ht+0x179c3, %rdi
nop
nop
nop
nop
nop
cmp $50982, %rax
mov $106, %rcx
rep movsl
nop
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0x2c4d, %r10
nop
nop
sub $60369, %rbx
mov (%r10), %si
cmp %rdi, %rdi
lea addresses_WC_ht+0x8f5f, %r10
clflush (%r10)
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, (%r10)
nop
nop
nop
nop
sub $50736, %rcx
lea addresses_A_ht+0xd853, %rsi
lea addresses_UC_ht+0x10353, %rdi
nop
nop
nop
cmp $48340, %r10
mov $82, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_D_ht+0x13633, %rsi
lea addresses_WC_ht+0x1e0b3, %rdi
nop
nop
nop
inc %r8
mov $69, %rcx
rep movsb
nop
nop
nop
nop
sub $4028, %r8
lea addresses_WT_ht+0xcf53, %r9
nop
nop
sub %r8, %r8
movl $0x61626364, (%r9)
nop
nop
nop
cmp $52559, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r9
push %rax
push %rdi

// Store
lea addresses_D+0xbb53, %r12
nop
sub %r11, %r11
movl $0x51525354, (%r12)
nop
nop
nop
inc %r10

// Store
lea addresses_WT+0x6753, %r10
cmp %rdi, %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm1
movups %xmm1, (%r10)
add %r15, %r15

// Store
lea addresses_RW+0x11473, %r11
nop
sub %rdi, %rdi
movl $0x51525354, (%r11)
add %r11, %r11

// Load
lea addresses_WT+0x15b53, %r9
clflush (%r9)
nop
nop
nop
xor %r12, %r12
mov (%r9), %r15
nop
nop
nop
nop
nop
sub %r12, %r12

// Store
lea addresses_D+0xd753, %r9
nop
nop
cmp $29143, %rdi
movb $0x51, (%r9)
nop
inc %rdi

// Store
lea addresses_WT+0x2ff3, %r11
sub %r9, %r9
movl $0x51525354, (%r11)
nop
nop
nop
add $12953, %rdi

// Store
lea addresses_D+0xbb53, %r12
inc %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm2
movups %xmm2, (%r12)
inc %r10

// Store
lea addresses_D+0x24bb, %r11
and %rdi, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm5
vmovntdq %ymm5, (%r11)
nop
nop
nop
nop
nop
add %rax, %rax

// Faulty Load
lea addresses_D+0xbb53, %rdi
nop
nop
cmp $26243, %rax
mov (%rdi), %r11w
lea oracles, %rax
and $0xff, %r11
shlq $12, %r11
mov (%rax,%r11,1), %r11
pop %rdi
pop %rax
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_RW', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 9, 'type': 'addresses_D', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
