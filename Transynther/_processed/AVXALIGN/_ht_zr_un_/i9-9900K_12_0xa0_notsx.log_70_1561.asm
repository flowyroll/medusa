.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x16874, %r9
nop
nop
nop
nop
cmp $56537, %r11
mov $0x6162636465666768, %r8
movq %r8, %xmm6
movups %xmm6, (%r9)
nop
nop
nop
nop
dec %r15
lea addresses_WC_ht+0x1af94, %r15
nop
nop
nop
and %r10, %r10
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_UC_ht+0x15f4, %rsi
lea addresses_normal_ht+0x11574, %rdi
nop
nop
nop
nop
sub $15088, %r15
mov $33, %rcx
rep movsq
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0xdf4, %rsi
lea addresses_UC_ht+0x1b3f4, %rdi
nop
nop
nop
nop
xor %r8, %r8
mov $9, %rcx
rep movsb
sub $6526, %r10
lea addresses_normal_ht+0xcd74, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
dec %r15
mov (%rcx), %si
nop
nop
nop
nop
sub %r15, %r15
lea addresses_WT_ht+0x9cf4, %rcx
nop
nop
nop
nop
nop
xor $19605, %r11
mov (%rcx), %r10w
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x1adf4, %r9
nop
nop
nop
nop
nop
add $2746, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm5
movups %xmm5, (%r9)
nop
nop
cmp $42309, %rsi
lea addresses_normal_ht+0xb74e, %rsi
lea addresses_UC_ht+0x174fa, %rdi
dec %r11
mov $76, %rcx
rep movsb
nop
inc %r11
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rsi

// Store
lea addresses_WT+0x11714, %r8
nop
inc %rsi
movl $0x51525354, (%r8)
nop
nop
nop
add %rsi, %rsi

// Load
lea addresses_US+0x16ff4, %r10
nop
nop
nop
sub %r15, %r15
movups (%r10), %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
sub %r10, %r10

// Store
lea addresses_D+0x11ff4, %rcx
nop
nop
nop
nop
sub $61754, %r10
movb $0x51, (%rcx)
nop
nop
nop
nop
sub $47252, %rcx

// Store
lea addresses_normal+0x14df4, %r15
nop
nop
nop
nop
and $2950, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
movups %xmm5, (%r15)
sub %r15, %r15

// Store
lea addresses_PSE+0x161ec, %rsi
nop
nop
nop
nop
nop
dec %r8
movb $0x51, (%rsi)
xor %r15, %r15

// Store
lea addresses_normal+0x1b7f4, %r8
nop
nop
nop
nop
nop
sub $13474, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, (%r8)
nop
nop
nop
xor $44568, %r10

// Faulty Load
lea addresses_WT+0x75f4, %rcx
nop
nop
nop
nop
and %rsi, %rsi
vmovntdqa (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r10
lea oracles, %r15
and $0xff, %r10
shlq $12, %r10
mov (%r15,%r10,1), %r10
pop %rsi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'60': 38, '46': 29, '00': 3}
60 46 60 60 60 60 46 00 60 46 60 60 46 60 46 60 46 60 60 60 60 00 60 60 46 46 46 60 60 00 46 60 46 46 46 46 60 46 60 60 60 46 46 60 46 60 46 46 46 60 60 46 46 46 60 60 60 60 60 46 46 60 60 46 46 60 60 46 60 60
*/
