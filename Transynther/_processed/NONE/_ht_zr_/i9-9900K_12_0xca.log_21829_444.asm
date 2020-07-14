.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x104ec, %rsi
lea addresses_WC_ht+0x1b06c, %rdi
nop
nop
nop
cmp %rbx, %rbx
mov $120, %rcx
rep movsw
nop
nop
nop
nop
dec %r11
lea addresses_WT_ht+0xfeec, %r12
nop
nop
nop
nop
inc %r14
mov (%r12), %r11
nop
nop
add %r12, %r12
lea addresses_A_ht+0x12d2c, %r14
clflush (%r14)
nop
nop
nop
and %rbx, %rbx
movups (%r14), %xmm7
vpextrq $1, %xmm7, %r11
nop
nop
nop
xor $31304, %rcx
lea addresses_WC_ht+0xe1cc, %r11
nop
nop
and %r14, %r14
mov $0x6162636465666768, %r12
movq %r12, (%r11)
add $63642, %rbx
lea addresses_normal_ht+0x14f7c, %rcx
clflush (%rcx)
nop
nop
nop
cmp %r12, %r12
vmovups (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbx
nop
nop
nop
cmp $6382, %r12
lea addresses_D_ht+0x1a2ec, %rbx
nop
nop
nop
inc %rcx
mov (%rbx), %r11d
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rbx
push %rdx
push %rsi

// Load
lea addresses_WC+0xb4ec, %r11
nop
nop
sub $24328, %r10
vmovups (%r11), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
nop
cmp %rdx, %rdx

// Store
lea addresses_RW+0xe4ec, %r8
nop
nop
nop
nop
dec %r15
movb $0x51, (%r8)
nop
add $16601, %rbx

// Store
mov $0x514, %r11
nop
nop
nop
nop
sub $6500, %rsi
mov $0x5152535455565758, %r15
movq %r15, (%r11)
nop
dec %r11

// Faulty Load
lea addresses_WT+0x2cec, %r11
add %r15, %r15
vmovups (%r11), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbx
lea oracles, %r10
and $0xff, %rbx
shlq $12, %rbx
mov (%r10,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rbx
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'44': 5966, '45': 15802, '00': 61}
45 44 45 44 45 45 44 45 45 45 44 45 45 44 45 45 44 45 45 45 45 44 45 45 45 45 45 44 45 45 44 45 44 45 45 45 44 45 44 45 44 45 45 45 45 44 45 44 45 45 44 45 45 44 45 45 45 44 45 45 45 45 45 45 45 44 45 45 45 44 45 45 45 45 45 44 45 44 45 44 45 45 45 44 45 45 45 45 44 45 44 45 44 45 45 44 45 44 45 45 45 45 44 45 45 44 45 45 45 45 44 45 45 45 45 44 45 44 45 45 45 44 45 45 45 45 44 45 45 44 45 44 45 44 45 45 45 45 45 45 45 45 45 44 45 45 44 45 45 45 44 45 44 45 45 44 45 45 45 44 45 45 44 45 44 45 45 44 45 45 45 44 45 44 45 45 45 45 45 44 45 45 44 45 44 45 45 45 45 44 45 44 45 45 44 45 45 45 45 45 44 45 44 45 45 45 44 45 45 45 45 44 45 45 44 45 45 45 45 44 45 44 45 45 45 44 45 45 44 45 45 45 45 45 44 45 45 45 44 45 45 45 45 44 45 44 45 45 44 45 44 45 45 44 45 45 45 45 45 44 45 44 45 44 45 45 45 45 44 45 45 45 45 44 45 44 45 45 44 45 45 45 44 45 44 45 45 44 45 45 45 45 44 45 44 45 45 45 44 45 44 45 44 45 44 45 45 44 45 44 45 45 45 45 45 44 45 45 45 44 45 44 45 45 45 44 45 45 45 44 45 45 45 45 45 45 45 44 45 44 45 45 45 45 44 45 44 45 45 45 45 45 45 45 45 45 45 44 45 45 44 45 44 45 44 45 45 45 45 44 45 44 45 44 45 45 45 45 44 45 44 45 44 45 45 44 45 45 45 45 45 44 45 45 45 45 45 44 45 45 44 45 44 45 45 45 45 45 45 44 45 45 45 45 44 45 45 44 45 45 45 45 45 44 45 45 44 45 45 44 45 45 44 45 44 45 44 45 45 45 45 45 45 45 44 45 45 45 45 44 45 44 45 44 45 44 45 44 45 45 45 44 45 44 45 44 45 45 45 45 44 45 45 44 45 44 45 45 45 45 45 45 44 45 45 44 45 44 45 44 45 45 44 45 45 45 44 45 45 45 45 45 44 45 45 45 44 45 45 44 45 44 45 45 45 45 45 45 44 45 45 44 45 45 44 45 45 44 45 45 45 45 44 45 45 44 45 45 45 44 45 45 45 45 45 44 45 44 45 45 45 45 44 45 44 45 45 45 45 44 45 45 45 44 45 44 45 45 45 45 44 45 45 00 45 45 45 45 44 45 44 45 44 45 45 45 45 44 45 45 44 45 45 44 45 45 45 45 45 44 45 45 44 45 45 44 45 45 45 45 45 45 44 45 44 45 44 45 45 45 45 45 44 45 45 45 44 45 45 45 44 45 44 45 45 44 45 44 45 44 45 44 45 44 45 45 44 45 44 45 45 44 45 45 45 45 45 44 45 45 45 44 45 44 45 45 45 45 45 45 45 45 44 45 44 45 44 45 45 45 45 45 44 45 44 45 45 45 45 45 45 44 45 45 44 45 44 45 44 45 00 45 45 44 45 45 45 45 45 45 45 44 45 45 45 44 45 45 45 45 45 45 45 45 44 45 45 45 44 45 45 45 45 45 45 45 44 45 45 44 45 45 45 44 45 44 45 45 45 45 44 45 45 44 45 44 45 45 44 45 45 45 45 45 44 45 45 45 44 45 44 45 45 45 44 45 44 45 45 45 44 45 45 45 45 44 45 45 44 45 45 44 45 44 45 44 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 44 45 44 45 44 45 44 45 44 45 45 45 45 44 45 45 45 44 45 45 45 44 45 45 45 45 45 44 45 45 45 45 44 45 45 45 44 45 44 45 45 44 45 45 44 45 45 44 45 44 45 45 45 45 45 45 44 45 45 45 44 45 44 45 45 44 45 45 44 45 45 44 45 44 45 45 45 44 45 45 45 45 44 45 45 45 45 45 45 44 45 44 45 44 45 45 45 44 45 45 45 45 45 45 45 44 45 44 45 44 45 45 45 45 45 44 45 45 45 45 44 45 44 45 45 45 45 45 45 44 45 45 44 45 45 45 45 44 45 44 45 45 44 45 45 44 45 45 44 45 45 45 45 45 45 44 45 44 45 45 44 45 45 44 45 45 45 45 44 45 45 45 45 44 45 44 45 45 45 44 45 45 45 44 45 44 45 44 45
*/
