.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1ae85, %r11
nop
nop
cmp $44236, %r12
movups (%r11), %xmm2
vpextrq $1, %xmm2, %r15
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_WT_ht+0x18b05, %rsi
lea addresses_A_ht+0x4b35, %rdi
clflush (%rsi)
and %r11, %r11
mov $104, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r15, %r15
lea addresses_UC_ht+0xf37d, %r12
clflush (%r12)
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%r12)
nop
add $62319, %rdx
lea addresses_normal_ht+0xb05, %rdi
and $54138, %r12
vmovups (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdx
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_D_ht+0xc345, %r15
inc %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%r15)
nop
dec %rdx
lea addresses_D_ht+0x1d685, %rsi
nop
nop
nop
nop
nop
inc %rcx
movb $0x61, (%rsi)
nop
nop
dec %r11
lea addresses_WC_ht+0x8659, %r12
sub %rsi, %rsi
vmovups (%r12), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r15
and $55940, %rdx
lea addresses_normal_ht+0x14de1, %r12
clflush (%r12)
nop
nop
xor $1156, %rdx
movw $0x6162, (%r12)
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x1c9e5, %rdi
nop
nop
and %rdx, %rdx
mov (%rdi), %cx
dec %r15
lea addresses_WT_ht+0x1a835, %rdx
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm6
movups %xmm6, (%rdx)
and $44582, %rsi
lea addresses_normal_ht+0x7c7d, %rsi
nop
nop
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
movups %xmm0, (%rsi)
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x198e5, %r11
nop
nop
nop
nop
nop
and $16946, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r11)
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_D_ht+0xb685, %r15
nop
nop
sub %r11, %r11
mov (%r15), %edx
xor %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WC+0x1c87f, %rsi
lea addresses_PSE+0x1c0fd, %rdi
cmp $20561, %rdx
mov $56, %rcx
rep movsw
nop
nop
cmp $55320, %rdx

// Faulty Load
lea addresses_D+0x3e85, %rdx
nop
nop
nop
nop
cmp $18498, %rdi
movb (%rdx), %al
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 2, 'same': False}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 1, 'NT': True, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': True, 'congruent': 2}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
