.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x9eb9, %r10
nop
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm0
vmovups %ymm0, (%r10)
nop
nop
inc %rdi
lea addresses_D_ht+0x8a69, %r8
nop
dec %r11
mov (%r8), %r13w
nop
nop
nop
nop
nop
inc %r8
lea addresses_WT_ht+0x7753, %r8
nop
nop
nop
nop
nop
cmp $27452, %r13
mov $0x6162636465666768, %r14
movq %r14, %xmm4
vmovups %ymm4, (%r8)
nop
nop
nop
nop
nop
xor $54839, %rdi
lea addresses_WT_ht+0x151d9, %rdi
nop
add $37511, %r10
mov (%rdi), %r11
nop
mfence
lea addresses_normal_ht+0x100d9, %rsi
lea addresses_WT_ht+0xbe2c, %rdi
nop
nop
nop
nop
nop
add $31983, %r11
mov $5, %rcx
rep movsw
nop
nop
xor %r11, %r11
lea addresses_UC_ht+0x16745, %rsi
nop
nop
nop
nop
and %r8, %r8
mov $0x6162636465666768, %r11
movq %r11, (%rsi)
nop
nop
nop
and $15609, %rsi
lea addresses_WC_ht+0x1dbd9, %r14
nop
nop
sub $42686, %r13
mov $0x6162636465666768, %r10
movq %r10, %xmm7
movups %xmm7, (%r14)
and $42111, %rdi
lea addresses_UC_ht+0x2ef0, %rcx
add %r10, %r10
and $0xffffffffffffffc0, %rcx
vmovntdqa (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r11
sub %rdi, %rdi
lea addresses_D_ht+0x10bd9, %rsi
lea addresses_normal_ht+0x15d99, %rdi
xor %r8, %r8
mov $26, %rcx
rep movsb
nop
nop
nop
nop
nop
and $5749, %r8
lea addresses_A_ht+0x31d9, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $27755, %r11
movl $0x61626364, (%rsi)
nop
nop
nop
and $50488, %r13
lea addresses_A_ht+0x1819, %rsi
lea addresses_WT_ht+0x1b3d9, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %r8
mov $0, %rcx
rep movsl
dec %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %r9
push %rdi
push %rdx

// Store
lea addresses_normal+0x1e86c, %r8
nop
nop
nop
nop
add %rdx, %rdx
movl $0x51525354, (%r8)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r8
nop
nop
nop
nop
inc %rdx

// Store
mov $0x3d511000000003e1, %r9
nop
add %rdi, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%r9)
nop
nop
sub %rdi, %rdi

// Store
lea addresses_normal+0x8ced, %rdi
nop
nop
nop
nop
nop
sub $41359, %r12
movl $0x51525354, (%rdi)
nop
nop
nop
nop
sub %r10, %r10

// Store
mov $0x524c9400000005e9, %rdi
nop
nop
sub $62138, %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm5
vmovups %ymm5, (%rdi)
nop
xor %rdx, %rdx

// Store
lea addresses_RW+0x1b699, %r10
sub $21668, %r12
movw $0x5152, (%r10)
nop
nop
nop
nop
nop
dec %rdx

// Store
lea addresses_UC+0x75d9, %r8
nop
nop
sub %r10, %r10
movb $0x51, (%r8)
nop
nop
nop
nop
nop
and %rdx, %rdx

// Store
lea addresses_RW+0x135d9, %rdx
clflush (%rdx)
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovntdq %ymm6, (%rdx)
nop
sub $5013, %rdx

// Load
lea addresses_PSE+0x1131, %r9
nop
nop
xor %r15, %r15
movups (%r9), %xmm5
vpextrq $1, %xmm5, %r12
nop
nop
nop
sub %rdx, %rdx

// Faulty Load
lea addresses_UC+0x75d9, %r8
nop
nop
sub $47670, %r12
movb (%r8), %dl
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %r9
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': True, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 9}}
{'2c': 1, '04': 1, '58': 21826, '34': 1}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
