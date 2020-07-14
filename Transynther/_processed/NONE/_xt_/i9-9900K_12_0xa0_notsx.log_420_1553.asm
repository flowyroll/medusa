.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1a6c4, %rax
nop
nop
nop
nop
nop
add $51422, %r13
mov (%rax), %r14
nop
nop
nop
sub %r10, %r10
lea addresses_UC_ht+0x93c4, %r12
nop
nop
nop
nop
nop
mfence
movups (%r12), %xmm6
vpextrq $1, %xmm6, %r11
nop
nop
inc %r14
lea addresses_normal_ht+0x16d44, %rsi
lea addresses_A_ht+0x7244, %rdi
nop
nop
and $25501, %r11
mov $80, %rcx
rep movsw
nop
nop
lfence
lea addresses_WC_ht+0x1aadc, %r10
nop
nop
nop
nop
xor %r14, %r14
mov (%r10), %eax
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x3e44, %rax
inc %r13
mov (%rax), %r10
nop
add %rdx, %rdx
lea addresses_D_ht+0x18544, %r13
nop
xor %rdi, %rdi
vmovups (%r13), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
sub %r14, %r14
lea addresses_WT_ht+0x191a8, %rsi
lea addresses_normal_ht+0x183d4, %rdi
clflush (%rsi)
nop
cmp %rdx, %rdx
mov $124, %rcx
rep movsb
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x14584, %r10
nop
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r10)
nop
nop
and %r14, %r14
lea addresses_UC_ht+0x1e684, %rsi
lea addresses_UC_ht+0xf544, %rdi
nop
nop
nop
nop
nop
cmp $32165, %r11
mov $91, %rcx
rep movsl
nop
nop
cmp %r10, %r10
lea addresses_normal_ht+0x6644, %r11
and %r14, %r14
and $0xffffffffffffffc0, %r11
vmovaps (%r11), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r12
nop
nop
nop
nop
nop
cmp $17143, %rsi
lea addresses_UC_ht+0x11c44, %rsi
lea addresses_normal_ht+0xd244, %rdi
nop
nop
nop
nop
and %r11, %r11
mov $76, %rcx
rep movsl
nop
cmp %r14, %r14
lea addresses_D_ht+0xa054, %rsi
lea addresses_UC_ht+0xd5c4, %rdi
nop
nop
nop
nop
add $26131, %r14
mov $78, %rcx
rep movsq
nop
nop
nop
nop
inc %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r9
push %rax
push %rdi

// Store
lea addresses_normal+0x5164, %rdi
nop
nop
nop
nop
xor %r12, %r12
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovaps %ymm2, (%rdi)
nop
nop
nop
and $10032, %r14

// Store
lea addresses_A+0xedb8, %r9
xor $9744, %r15
movb $0x51, (%r9)
add $40076, %rdi

// Store
lea addresses_D+0x544, %rdi
nop
nop
nop
nop
cmp $60301, %r12
mov $0x5152535455565758, %r15
movq %r15, (%rdi)
nop
nop
cmp %r12, %r12

// Faulty Load
lea addresses_PSE+0xa644, %r10
nop
nop
nop
nop
nop
cmp $64690, %rdi
vmovups (%r10), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rax
lea oracles, %r15
and $0xff, %rax
shlq $12, %rax
mov (%r15,%rax,1), %rax
pop %rdi
pop %rax
pop %r9
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'33': 420}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
