.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1c11a, %rdi
nop
nop
nop
xor %rax, %rax
mov (%rdi), %edx
nop
add %r8, %r8
lea addresses_A_ht+0x40da, %r15
nop
nop
xor %r10, %r10
movups (%r15), %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
xor $26615, %rdx
lea addresses_WT_ht+0x1c2da, %rdi
clflush (%rdi)
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
nop
nop
add $11358, %rdx
lea addresses_WC_ht+0x66da, %rsi
lea addresses_normal_ht+0xf69e, %rdi
cmp $53942, %r8
mov $8, %rcx
rep movsq
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0xda0e, %rdx
nop
nop
nop
add %rcx, %rcx
movb (%rdx), %r8b
add $7742, %r8
lea addresses_UC_ht+0xbe2a, %rsi
lea addresses_WT_ht+0x180da, %rdi
nop
nop
add $51909, %r10
mov $58, %rcx
rep movsb
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x16ada, %r8
clflush (%r8)
nop
add %rax, %rax
mov (%r8), %edi
nop
nop
nop
sub $4580, %rsi
lea addresses_D_ht+0x6082, %rdi
nop
nop
nop
nop
dec %rax
mov (%rdi), %esi
and %r10, %r10
lea addresses_D_ht+0x2ad2, %rax
nop
add %rcx, %rcx
mov (%rax), %edi
nop
nop
nop
nop
nop
xor $57213, %rdi
lea addresses_WC_ht+0x74da, %rsi
lea addresses_D_ht+0xadda, %rdi
nop
nop
add %r10, %r10
mov $22, %rcx
rep movsq
nop
nop
sub $20540, %rdi
lea addresses_WT_ht+0x14d20, %r10
nop
nop
nop
nop
add $23015, %rax
movb $0x61, (%r10)
nop
nop
add $19673, %rcx
lea addresses_WC_ht+0x180da, %r15
nop
nop
nop
nop
nop
and $4625, %r8
movb (%r15), %dl
sub %rax, %rax
lea addresses_WC_ht+0x1ce8e, %rsi
lea addresses_A_ht+0x17cda, %rdi
nop
nop
add $28587, %r8
mov $104, %rcx
rep movsw
cmp %r10, %r10
lea addresses_WT_ht+0x10bda, %rsi
cmp %r15, %r15
mov (%rsi), %dx
xor %r10, %r10
lea addresses_UC_ht+0x1e688, %r10
nop
nop
nop
sub $28991, %r15
vmovups (%r10), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdx
nop
nop
add %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rbp
push %rbx
push %rdx
push %rsi

// Load
lea addresses_WT+0x1f4da, %r14
nop
nop
xor $54583, %r12
vmovups (%r14), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rsi
and $46370, %rbx

// Store
lea addresses_A+0x949a, %r12
nop
and $13657, %rsi
mov $0x5152535455565758, %r14
movq %r14, %xmm3
movntdq %xmm3, (%r12)
cmp $17564, %rbx

// Store
mov $0x528c8800000000da, %rdx
nop
nop
nop
nop
add %r12, %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
nop
cmp $31422, %rbx

// Store
lea addresses_US+0x188da, %rsi
nop
nop
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm0
movups %xmm0, (%rsi)
nop
add $4340, %rdx

// Store
lea addresses_RW+0x1e21a, %r12
nop
nop
nop
nop
add %rdx, %rdx
movw $0x5152, (%r12)
nop
nop
nop
nop
add $13535, %rbp

// Store
lea addresses_normal+0x1c682, %r12
nop
nop
nop
nop
nop
cmp $574, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, (%r12)
nop
nop
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_D+0x44da, %rsi
clflush (%rsi)
nop
nop
nop
nop
xor $34833, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_WT+0x10468, %r11
nop
nop
nop
nop
nop
xor $56752, %rbp
movl $0x51525354, (%r11)
nop
nop
nop
sub $64987, %rbp

// Faulty Load
lea addresses_D+0x44da, %r14
nop
add %rsi, %rsi
movb (%r14), %dl
lea oracles, %r11
and $0xff, %rdx
shlq $12, %rdx
mov (%r11,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'58': 5}
58 58 58 58 58
*/
