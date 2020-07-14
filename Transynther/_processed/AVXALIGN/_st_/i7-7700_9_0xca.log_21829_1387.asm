.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xf671, %rcx
nop
nop
nop
nop
cmp $46194, %rbx
mov $0x6162636465666768, %rax
movq %rax, (%rcx)
nop
nop
nop
nop
dec %r8
lea addresses_normal_ht+0x1d871, %r12
nop
nop
nop
nop
xor $8145, %r15
and $0xffffffffffffffc0, %r12
vmovntdqa (%r12), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rax
add %rax, %rax
lea addresses_WT_ht+0x13f9b, %rax
nop
dec %rbp
mov $0x6162636465666768, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%rax)
nop
nop
cmp $30718, %r15
lea addresses_A_ht+0x5871, %rax
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
movups %xmm0, (%rax)
nop
sub $42837, %rax
lea addresses_D_ht+0x1b071, %r12
nop
nop
nop
nop
xor $12802, %r15
mov $0x6162636465666768, %rax
movq %rax, %xmm3
movups %xmm3, (%r12)
nop
sub %r12, %r12
lea addresses_WT_ht+0x5dea, %rax
nop
nop
nop
nop
nop
cmp $36939, %r8
mov (%rax), %rbp
nop
xor $48526, %rax
lea addresses_WT_ht+0x15471, %rsi
lea addresses_normal_ht+0x180f1, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %rbx
mov $64, %rcx
rep movsl
nop
nop
nop
nop
cmp $54558, %rbp
lea addresses_normal_ht+0x13d31, %rax
nop
nop
nop
cmp $62848, %rbx
and $0xffffffffffffffc0, %rax
vmovntdqa (%rax), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x162e1, %rbx
nop
nop
nop
add $35551, %r12
movups (%rbx), %xmm1
vpextrq $0, %xmm1, %rbp
nop
cmp %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rbp
push %rdi
push %rdx
push %rsi

// Load
mov $0x13eee0000000e01, %r12
nop
nop
nop
nop
xor $43550, %rsi
mov (%r12), %rdx
nop
and %r10, %r10

// Faulty Load
lea addresses_D+0xc071, %r11
nop
nop
nop
xor %rdi, %rdi
mov (%r11), %rsi
lea oracles, %r12
and $0xff, %rsi
shlq $12, %rsi
mov (%r12,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': True, 'size': 32, 'NT': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
