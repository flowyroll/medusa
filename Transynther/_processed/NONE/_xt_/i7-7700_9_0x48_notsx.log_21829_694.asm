.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1a786, %rsi
lea addresses_UC_ht+0x7352, %rdi
add %r8, %r8
mov $0, %rcx
rep movsl
nop
nop
nop
nop
add %r14, %r14
lea addresses_WC_ht+0x1e92c, %r11
nop
nop
xor %rsi, %rsi
and $0xffffffffffffffc0, %r11
vmovntdqa (%r11), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r14
add %rsi, %rsi
lea addresses_WT_ht+0x1cc6, %rdi
nop
nop
nop
nop
nop
sub $48875, %rax
vmovups (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r14
nop
nop
nop
nop
mfence
lea addresses_UC_ht+0x3eb0, %rsi
nop
nop
cmp %rax, %rax
movups (%rsi), %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
nop
nop
xor $6073, %rcx
lea addresses_WT_ht+0xb0c6, %rsi
lea addresses_WT_ht+0x198c6, %rdi
nop
sub $19132, %r15
mov $102, %rcx
rep movsw
nop
add %rsi, %rsi
lea addresses_UC_ht+0xe646, %r8
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm0
vmovups %ymm0, (%r8)
sub $61446, %rdi
lea addresses_WT_ht+0xc546, %r11
nop
nop
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %r15
movq %r15, (%r11)
sub %r11, %r11
lea addresses_normal_ht+0xe8c6, %rax
lfence
mov $0x6162636465666768, %r14
movq %r14, %xmm2
vmovups %ymm2, (%rax)
inc %r14
lea addresses_A_ht+0x39de, %rsi
lea addresses_UC_ht+0x19d86, %rdi
cmp $1492, %rax
mov $70, %rcx
rep movsq
nop
add %rcx, %rcx
lea addresses_UC_ht+0x18c6, %r11
nop
nop
nop
sub $34866, %rsi
movw $0x6162, (%r11)
nop
nop
nop
cmp %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rbx
push %rcx
push %rdi

// Store
lea addresses_UC+0x16c06, %rdi
nop
nop
nop
nop
dec %r14
mov $0x5152535455565758, %r8
movq %r8, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
nop
nop
add %r14, %r14

// Load
lea addresses_US+0x19496, %r14
nop
nop
cmp %rcx, %rcx
vmovups (%r14), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbx
and %r8, %r8

// Store
lea addresses_WC+0x16b66, %rcx
nop
nop
nop
nop
and %r8, %r8
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
inc %r8

// Store
lea addresses_RW+0x174c6, %rdi
sub $54340, %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
nop
nop
dec %r14

// Store
lea addresses_PSE+0x1c2e6, %r14
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm5
movups %xmm5, (%r14)
nop
nop
nop
nop
add $29039, %rbx

// Store
lea addresses_PSE+0x160c6, %rbx
nop
nop
nop
cmp $32650, %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm7
vmovaps %ymm7, (%rbx)
nop
nop
sub %r11, %r11

// Faulty Load
lea addresses_normal+0x8c6, %rbx
nop
cmp $63971, %r8
movups (%rbx), %xmm4
vpextrq $1, %xmm4, %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_PSE', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
