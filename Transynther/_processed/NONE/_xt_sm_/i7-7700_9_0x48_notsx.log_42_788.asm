.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %rcx
push %rdi
push %rdx
lea addresses_UC_ht+0x165cc, %rcx
cmp %r10, %r10
movl $0x61626364, (%rcx)
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x9d24, %r11
nop
and %rdi, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm7
movups %xmm7, (%r11)
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x15cc, %r8
nop
nop
nop
cmp %rdx, %rdx
movl $0x61626364, (%r8)
nop
nop
nop
nop
xor $48009, %r11
lea addresses_UC_ht+0xce3c, %r8
nop
nop
nop
nop
nop
and %r11, %r11
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
movups %xmm2, (%r8)
nop
nop
nop
nop
and $42266, %rdi
lea addresses_WT_ht+0xdb4, %r11
nop
inc %r15
vmovups (%r11), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
nop
nop
xor $51091, %r10
lea addresses_normal_ht+0x5fcc, %r15
add %r8, %r8
mov $0x6162636465666768, %rdx
movq %rdx, (%r15)
nop
nop
xor $22212, %rdx
lea addresses_D_ht+0x9dcc, %r15
nop
nop
nop
nop
and $16257, %r11
mov $0x6162636465666768, %r8
movq %r8, %xmm1
vmovups %ymm1, (%r15)
nop
nop
nop
nop
and $40101, %r10
lea addresses_UC_ht+0x1bc3c, %r8
nop
nop
nop
nop
nop
add %r15, %r15
mov $0x6162636465666768, %r11
movq %r11, %xmm7
movups %xmm7, (%r8)
nop
nop
nop
cmp $21196, %rdx
lea addresses_WT_ht+0x1abcc, %r11
clflush (%r11)
nop
nop
nop
nop
xor $38420, %r15
vmovups (%r11), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
add %r15, %r15
lea addresses_WT_ht+0x118cc, %rcx
nop
nop
nop
and $11336, %r10
mov (%rcx), %r8d
nop
nop
nop
xor $122, %rcx
lea addresses_WT_ht+0x143ac, %rcx
nop
add %rdi, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm1
and $0xffffffffffffffc0, %rcx
vmovaps %ymm1, (%rcx)
nop
cmp $1787, %rdx
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0x592c, %rsi
mov $0x1e30c000000004b9, %rdi
nop
nop
nop
nop
nop
cmp $17527, %r10
mov $4, %rcx
rep movsw
nop
and $16769, %rdi

// Store
lea addresses_A+0x35cc, %rsi
clflush (%rsi)
nop
and %r10, %r10
movb $0x51, (%rsi)
nop
nop
nop
nop
add $53215, %r10

// Store
lea addresses_US+0x13dcc, %r11
nop
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r11)
dec %r11

// Faulty Load
lea addresses_A+0x35cc, %r14
nop
nop
nop
nop
nop
xor $30574, %rdi
mov (%r14), %rsi
lea oracles, %r10
and $0xff, %rsi
shlq $12, %rsi
mov (%r10,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_NC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 3}, 'OP': 'STOR'}
{'51': 42}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
