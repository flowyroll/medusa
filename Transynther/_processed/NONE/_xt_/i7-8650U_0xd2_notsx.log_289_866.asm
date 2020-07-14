.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1a857, %rcx
nop
nop
sub $1320, %r14
movups (%rcx), %xmm7
vpextrq $1, %xmm7, %r10
dec %r9
lea addresses_WC_ht+0x1da57, %r13
nop
nop
xor %r11, %r11
mov $0x6162636465666768, %r15
movq %r15, %xmm2
movups %xmm2, (%r13)
nop
and %r9, %r9
lea addresses_WT_ht+0xebe7, %rsi
lea addresses_normal_ht+0x1e5ab, %rdi
add $36048, %r10
mov $0, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %r14
lea addresses_UC_ht+0x2857, %rsi
lea addresses_WT_ht+0x7303, %rdi
nop
nop
nop
inc %r10
mov $70, %rcx
rep movsl
nop
add %r14, %r14
lea addresses_normal_ht+0x290f, %r10
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm0
and $0xffffffffffffffc0, %r10
vmovntdq %ymm0, (%r10)
add $5847, %rcx
lea addresses_UC_ht+0x6a57, %r14
clflush (%r14)
nop
nop
nop
nop
add $23819, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r14)
nop
nop
nop
nop
nop
inc %r9
lea addresses_normal_ht+0x1ecb7, %rsi
lea addresses_UC_ht+0x1d28e, %rdi
nop
nop
sub %r14, %r14
mov $109, %rcx
rep movsq
nop
nop
add $538, %r9
lea addresses_WT_ht+0x1065, %r11
nop
and $33783, %r15
mov (%r11), %ecx
sub $41561, %r15
lea addresses_D_ht+0x13a98, %rsi
lea addresses_normal_ht+0x177d3, %rdi
clflush (%rsi)
sub $38246, %r14
mov $47, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %r15
lea addresses_A_ht+0x1d97, %rcx
nop
nop
nop
nop
nop
and %r9, %r9
movl $0x61626364, (%rcx)
nop
nop
nop
and $5112, %r14
lea addresses_A_ht+0x8b7, %r14
nop
add $15537, %rsi
mov (%r14), %r15
nop
nop
nop
nop
sub %r11, %r11
lea addresses_WC_ht+0x11c97, %r13
inc %r10
vmovups (%r13), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
sub %r15, %r15
lea addresses_normal_ht+0x172af, %rsi
lea addresses_D_ht+0x8457, %rdi
nop
nop
and $65430, %r9
mov $109, %rcx
rep movsq
and %rdi, %rdi
lea addresses_D_ht+0x3e6f, %rcx
nop
nop
nop
and %rdi, %rdi
mov (%rcx), %r15
nop
nop
nop
nop
mfence
lea addresses_WT_ht+0x4aef, %rdi
xor %r15, %r15
mov (%rdi), %r11d
nop
nop
nop
nop
add $13614, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_RW+0x1c617, %rsi
mov $0x8c7, %rdi
nop
nop
nop
sub $15430, %r12
mov $49, %rcx
rep movsl
nop
xor %rdi, %rdi

// Load
mov $0x26cb1f0000000c57, %rdx
nop
nop
and %r11, %r11
vmovups (%rdx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
add $33023, %rdi

// Faulty Load
lea addresses_PSE+0x19c57, %r11
nop
nop
nop
nop
nop
dec %r15
mov (%r11), %r12w
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_P', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'33': 289}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
