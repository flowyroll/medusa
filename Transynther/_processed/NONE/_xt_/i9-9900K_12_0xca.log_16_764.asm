.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rsi
lea addresses_D_ht+0x16751, %rsi
dec %rcx
mov (%rsi), %r15d
nop
cmp $24825, %rbx
lea addresses_D_ht+0xa351, %r8
nop
sub %r9, %r9
mov (%r8), %rsi
nop
nop
dec %rbx
lea addresses_normal_ht+0x16d51, %r8
nop
add $50137, %r14
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
xor $37163, %rcx
lea addresses_WC_ht+0x5051, %r9
nop
add $20458, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, (%r9)
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0x1d6d1, %r8
xor %rcx, %rcx
mov (%r8), %r14
add $19288, %r9
lea addresses_WT_ht+0x9851, %rcx
nop
nop
nop
cmp $8076, %r15
movups (%rcx), %xmm0
vpextrq $1, %xmm0, %r8
nop
nop
nop
nop
nop
xor %rbx, %rbx
pop %rsi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rax
push %rdx
push %rsi

// Store
lea addresses_UC+0x15051, %r15
nop
nop
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, (%r15)
nop
nop
nop
and $4846, %rax

// Store
mov $0xf51, %r13
nop
and %rsi, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%r13)
nop
nop
nop
nop
cmp %r13, %r13

// Faulty Load
lea addresses_D+0x4d51, %r11
cmp %rsi, %rsi
vmovups (%r11), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r15
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rdx
pop %rax
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': True, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'36': 16}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
