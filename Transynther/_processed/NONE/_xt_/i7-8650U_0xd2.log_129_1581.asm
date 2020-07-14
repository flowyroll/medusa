.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x5998, %r9
nop
nop
nop
nop
cmp $56708, %rdi
and $0xffffffffffffffc0, %r9
vmovaps (%r9), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r14
nop
nop
nop
nop
cmp $29951, %r10
lea addresses_A_ht+0x198, %rsi
lea addresses_WT_ht+0x12688, %rdi
clflush (%rsi)
nop
nop
nop
dec %rax
mov $0, %rcx
rep movsb
nop
nop
nop
lfence
lea addresses_A_ht+0x13cb8, %rsi
lea addresses_WC_ht+0x15e6, %rdi
cmp %rax, %rax
mov $116, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %r10
lea addresses_D_ht+0x5b58, %r14
xor %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r14)
nop
nop
nop
sub $52645, %r9
lea addresses_A_ht+0xd6cc, %rcx
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm2
movups %xmm2, (%rcx)
nop
nop
nop
add $22535, %rcx
lea addresses_normal_ht+0x178f8, %rax
nop
nop
nop
nop
add $34344, %r10
movups (%rax), %xmm3
vpextrq $1, %xmm3, %rsi
nop
cmp $17088, %r9
lea addresses_A_ht+0xc198, %rax
add $32339, %rsi
mov (%rax), %r14
xor $58160, %r10
lea addresses_normal_ht+0x18a8, %r14
nop
nop
nop
lfence
mov (%r14), %eax
and $7225, %rsi
lea addresses_D_ht+0xfe60, %rcx
nop
nop
nop
xor $64383, %r14
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x3498, %rsi
lea addresses_A_ht+0x170f8, %rdi
nop
nop
nop
dec %r11
mov $55, %rcx
rep movsb
nop
and $736, %rcx
lea addresses_normal_ht+0x3d18, %r11
clflush (%r11)
nop
nop
sub $34323, %r10
movb $0x61, (%r11)
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x1a1e4, %r11
cmp $16887, %rdi
movw $0x6162, (%r11)
nop
nop
nop
inc %rsi
lea addresses_D_ht+0x8114, %rsi
nop
nop
nop
nop
cmp $46999, %rcx
mov (%rsi), %r11w
sub $21730, %rdi
lea addresses_UC_ht+0x18598, %rsi
lea addresses_normal_ht+0x11618, %rdi
nop
and %r9, %r9
mov $55, %rcx
rep movsl
nop
nop
and %r11, %r11
lea addresses_WC_ht+0x1cd5c, %r14
nop
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%r14)
nop
nop
xor %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r8
push %rax
push %rbx

// Store
lea addresses_A+0x1c348, %r15
nop
nop
sub $40979, %rax
movb $0x51, (%r15)
nop
nop
nop
dec %rax

// Faulty Load
lea addresses_D+0x3998, %r11
nop
nop
nop
nop
nop
xor $30493, %r8
mov (%r11), %r15w
lea oracles, %r12
and $0xff, %r15
shlq $12, %r15
mov (%r12,%r15,1), %r15
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'36': 129}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
