.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x9465, %rdx
nop
cmp $5828, %rcx
movb $0x61, (%rdx)
nop
nop
inc %r10
lea addresses_WT_ht+0xbca1, %r15
nop
nop
sub $36277, %rbx
movl $0x61626364, (%r15)
nop
add %r15, %r15
lea addresses_A_ht+0xee1, %rbx
nop
add %r8, %r8
and $0xffffffffffffffc0, %rbx
movntdqa (%rbx), %xmm2
vpextrq $1, %xmm2, %r15
nop
nop
nop
sub %r8, %r8
lea addresses_WT_ht+0x14387, %rbx
xor $19815, %rdx
movw $0x6162, (%rbx)
mfence
lea addresses_A_ht+0x9ea9, %rdx
nop
nop
add %r15, %r15
mov $0x6162636465666768, %r8
movq %r8, (%rdx)
nop
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0x1e47d, %r15
nop
nop
nop
nop
add %r11, %r11
movl $0x61626364, (%r15)
nop
nop
nop
add $24458, %r8
lea addresses_A_ht+0x2ee1, %rdx
nop
nop
cmp $11786, %r10
movl $0x61626364, (%rdx)
nop
xor $46927, %rbx
lea addresses_WC_ht+0x140e1, %r10
clflush (%r10)
nop
nop
nop
nop
xor $37096, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
and $0xffffffffffffffc0, %r10
movntdq %xmm1, (%r10)
nop
cmp %r11, %r11
lea addresses_WT_ht+0x5a61, %r8
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, (%r8)
nop
cmp $34335, %r11
lea addresses_WC_ht+0x18b1, %rdx
cmp $47217, %r10
and $0xffffffffffffffc0, %rdx
movntdqa (%rdx), %xmm6
vpextrq $1, %xmm6, %r8
nop
nop
nop
sub $31504, %rdx
lea addresses_D_ht+0x1a301, %r11
nop
nop
xor %r15, %r15
mov (%r11), %r10w
nop
nop
nop
nop
nop
sub $47244, %rdx
lea addresses_WC_ht+0x12aa1, %rbx
nop
nop
nop
and %r8, %r8
movb (%rbx), %r11b
add %rbx, %rbx
lea addresses_normal_ht+0x70e1, %rsi
lea addresses_normal_ht+0x2311, %rdi
clflush (%rdi)
nop
nop
nop
cmp $45784, %rbx
mov $121, %rcx
rep movsl
cmp $1193, %r8
lea addresses_D_ht+0xb3e1, %rsi
lea addresses_WT_ht+0x12ee1, %rdi
nop
nop
nop
nop
nop
sub %r11, %r11
mov $11, %rcx
rep movsl
nop
nop
and $4131, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_US+0xa8e1, %r10
nop
and %r12, %r12
mov $0x5152535455565758, %rdx
movq %rdx, (%r10)
cmp %r10, %r10

// Store
lea addresses_PSE+0x60e1, %r10
nop
nop
nop
nop
nop
dec %rbx
mov $0x5152535455565758, %r12
movq %r12, %xmm3
movups %xmm3, (%r10)
nop
xor $57432, %r12

// Store
lea addresses_US+0x12557, %r10
nop
nop
dec %r15
movw $0x5152, (%r10)
nop
add %rdx, %rdx

// Store
lea addresses_WT+0xb2e1, %r12
nop
nop
nop
sub %r10, %r10
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
add %r10, %r10

// Load
mov $0x440fae0000000821, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %r15
movups (%rsi), %xmm6
vpextrq $1, %xmm6, %rcx
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_normal+0x15661, %r10
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %r15
movq %r15, (%r10)
nop
nop
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_UC+0xf832, %rbx
nop
nop
and $48536, %rdx
movw $0x5152, (%rbx)
inc %r12

// Store
lea addresses_RW+0x1aae1, %rcx
nop
add %rbx, %rbx
mov $0x5152535455565758, %r12
movq %r12, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
nop
nop
cmp $55117, %rbx

// Faulty Load
lea addresses_WT+0xb2e1, %r10
xor $33176, %rbx
movntdqa (%r10), %xmm3
vpextrq $0, %xmm3, %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 3, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'52': 10212, '00': 180}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
