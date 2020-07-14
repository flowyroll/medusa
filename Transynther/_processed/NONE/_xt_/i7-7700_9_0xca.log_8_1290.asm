.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x259c, %rsi
nop
nop
sub $8272, %r13
mov (%rsi), %r12w
nop
nop
nop
nop
nop
and $60687, %rdx
lea addresses_normal_ht+0xa6dc, %rdx
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r11
movq %r11, (%rdx)
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x11ddc, %r12
nop
nop
nop
nop
cmp $2523, %rdx
mov (%r12), %rsi
nop
nop
nop
nop
nop
and $22131, %rdi
lea addresses_D_ht+0x465c, %rsi
lea addresses_A_ht+0x92dc, %rdi
nop
xor %rbx, %rbx
mov $58, %rcx
rep movsb
nop
cmp $62744, %r12
lea addresses_WT_ht+0x1e47c, %rcx
nop
nop
cmp %r12, %r12
movb (%rcx), %r11b
nop
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x189dc, %r13
nop
nop
inc %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r13)
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_A_ht+0x14edc, %r12
nop
nop
xor $44466, %rsi
movups (%r12), %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
nop
nop
nop
dec %r13
lea addresses_normal_ht+0x13ddc, %r12
nop
nop
nop
nop
cmp $17923, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
and $0xffffffffffffffc0, %r12
vmovntdq %ymm1, (%r12)
add $27693, %r13
lea addresses_D_ht+0x905c, %rsi
lea addresses_UC_ht+0x166dc, %rdi
clflush (%rsi)
nop
add %rdx, %rdx
mov $34, %rcx
rep movsw
cmp $54365, %r11
lea addresses_WT_ht+0x12ce, %r12
clflush (%r12)
and %rdi, %rdi
movb $0x61, (%r12)
nop
nop
nop
add $58453, %rcx
lea addresses_UC_ht+0xf5dc, %r11
clflush (%r11)
nop
nop
sub %rcx, %rcx
vmovups (%r11), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0xcc1c, %r12
dec %rdi
mov (%r12), %r11d
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x1a3dc, %r11
nop
mfence
mov $0x6162636465666768, %rsi
movq %rsi, (%r11)
nop
sub %rbx, %rbx
lea addresses_WC_ht+0x1cddc, %rsi
lea addresses_normal_ht+0xf524, %rdi
nop
nop
nop
nop
sub %r12, %r12
mov $105, %rcx
rep movsq
nop
add %rdx, %rdx
lea addresses_UC_ht+0x7e5c, %r12
inc %r11
mov (%r12), %rsi
nop
nop
nop
nop
and $5878, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0xe21c, %r8
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r8)
nop
lfence

// Store
lea addresses_US+0x116ac, %rsi
nop
nop
nop
nop
sub %r12, %r12
movl $0x51525354, (%rsi)
nop
nop
sub %r12, %r12

// Store
lea addresses_RW+0x1f1c, %r8
nop
nop
add $11920, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovaps %ymm7, (%r8)
and %rcx, %rcx

// Load
lea addresses_US+0x1627c, %rdi
cmp $62672, %r12
movaps (%rdi), %xmm4
vpextrq $1, %xmm4, %r14
sub %rdi, %rdi

// Store
lea addresses_UC+0x145dc, %rsi
nop
nop
nop
nop
sub $19628, %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm2
vmovntdq %ymm2, (%rsi)
nop
nop
nop
cmp $48730, %r12

// Store
lea addresses_PSE+0x14010, %r14
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %r12
movq %r12, (%r14)
nop
nop
dec %r12

// Store
lea addresses_RW+0x1f74c, %rcx
nop
add $37943, %r14
movb $0x51, (%rcx)
nop
nop
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_D+0xaddc, %rcx
nop
nop
nop
nop
nop
sub %r14, %r14
mov (%rcx), %rax
lea oracles, %rsi
and $0xff, %rax
shlq $12, %rax
mov (%rsi,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}}
{'src': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_RW'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'36': 8}
36 36 36 36 36 36 36 36
*/
