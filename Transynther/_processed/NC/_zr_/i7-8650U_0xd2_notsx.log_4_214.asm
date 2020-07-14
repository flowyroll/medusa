.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x14e74, %rsi
lea addresses_UC_ht+0x779a, %rdi
nop
nop
nop
nop
nop
inc %r12
mov $44, %rcx
rep movsb
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x1d8b8, %r10
nop
nop
cmp $21426, %r14
movups (%r10), %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
nop
sub $22319, %r14
lea addresses_WC_ht+0x8e1a, %r10
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
movups %xmm2, (%r10)
nop
nop
nop
cmp $62385, %r14
lea addresses_D_ht+0x655a, %rsi
lea addresses_WT_ht+0x1ed1, %rdi
nop
nop
nop
dec %r10
mov $4, %rcx
rep movsl
nop
nop
nop
nop
mfence
lea addresses_UC_ht+0xf83a, %rsi
lea addresses_WT_ht+0x1579a, %rdi
nop
nop
cmp $45942, %rbx
mov $74, %rcx
rep movsw
nop
nop
nop
xor $2077, %rsi
lea addresses_D_ht+0x15e0a, %r12
add %rsi, %rsi
mov (%r12), %rbx
nop
nop
nop
nop
add $54426, %rsi
lea addresses_A_ht+0x7e1e, %rdi
nop
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %r10
movq %r10, %xmm1
and $0xffffffffffffffc0, %rdi
movntdq %xmm1, (%rdi)
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x1379a, %rbx
nop
nop
nop
nop
nop
cmp %r10, %r10
movups (%rbx), %xmm0
vpextrq $0, %xmm0, %r12
nop
nop
nop
nop
cmp $9261, %rcx
lea addresses_normal_ht+0x679a, %rcx
nop
nop
nop
nop
xor %r12, %r12
mov (%rcx), %r10w
inc %r10
lea addresses_normal_ht+0x16b9a, %rcx
cmp $35803, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
movups %xmm7, (%rcx)
nop
nop
nop
nop
and %r10, %r10
lea addresses_A_ht+0x1aa7a, %rbx
nop
nop
and $60383, %rdi
mov (%rbx), %r10w
nop
nop
nop
sub %rbx, %rbx
lea addresses_D_ht+0x2c9a, %rdi
and $51128, %rcx
movw $0x6162, (%rdi)
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x19e9a, %rsi
nop
add %rbx, %rbx
mov (%rsi), %r12
nop
nop
nop
nop
nop
xor $943, %rdi
lea addresses_normal_ht+0x111fa, %rcx
nop
sub $2740, %r14
mov $0x6162636465666768, %r12
movq %r12, (%rcx)
nop
nop
nop
xor %rbx, %rbx
lea addresses_A_ht+0x1c21a, %r12
nop
nop
xor %rdi, %rdi
movb (%r12), %r10b
nop
nop
cmp $48556, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rcx
push %rdi
push %rsi

// Load
lea addresses_WT+0x10a1a, %r9
inc %rcx
movaps (%r9), %xmm5
vpextrq $0, %xmm5, %r10
nop
nop
nop
nop
xor $13722, %r10

// Load
lea addresses_WT+0x1c9a, %r9
sub $26683, %r11
vmovups (%r9), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
nop
nop
nop
inc %r15

// Load
lea addresses_UC+0xe99a, %rcx
inc %rsi
mov (%rcx), %r15d
sub %rsi, %rsi

// Store
lea addresses_UC+0xcf6b, %rdi
nop
nop
sub %rcx, %rcx
movb $0x51, (%rdi)
nop
xor %rcx, %rcx

// Load
mov $0xae2, %r15
nop
nop
nop
nop
nop
sub %r11, %r11
movups (%r15), %xmm3
vpextrq $0, %xmm3, %r10
nop
nop
nop
nop
nop
cmp $9666, %rdi

// Faulty Load
mov $0x6a962d000000039a, %rcx
nop
nop
nop
and %rdi, %rdi
mov (%rcx), %r15w
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': True, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'00': 4}
00 00 00 00
*/
