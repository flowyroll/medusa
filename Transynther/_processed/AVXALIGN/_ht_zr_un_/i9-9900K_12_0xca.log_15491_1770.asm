.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x4e0f, %r8
cmp %rax, %rax
movw $0x6162, (%r8)
nop
xor $9072, %r12
lea addresses_UC_ht+0x18faf, %rsi
clflush (%rsi)
nop
nop
nop
sub %rdx, %rdx
and $0xffffffffffffffc0, %rsi
vmovntdqa (%rsi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r13
nop
sub $48002, %rsi
lea addresses_WC_ht+0x17cef, %rax
nop
nop
nop
nop
cmp $51974, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%rax)
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x1072d, %r12
clflush (%r12)
nop
nop
and $53565, %r8
mov $0x6162636465666768, %rax
movq %rax, %xmm4
movups %xmm4, (%r12)
cmp %rdi, %rdi
lea addresses_WT_ht+0xeb81, %rdx
nop
and $14135, %r12
mov $0x6162636465666768, %rax
movq %rax, (%rdx)
nop
and %rdx, %rdx
lea addresses_D_ht+0xebaf, %r13
nop
nop
xor $45325, %r12
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
vmovups %ymm5, (%r13)
nop
nop
nop
xor %rdx, %rdx
lea addresses_UC_ht+0x69af, %rsi
lea addresses_WT_ht+0x1b1af, %rdi
nop
cmp $58487, %r13
mov $75, %rcx
rep movsb
nop
sub %r13, %r13
lea addresses_normal_ht+0xb6a7, %rsi
lea addresses_UC_ht+0x65af, %rdi
nop
add %r13, %r13
mov $1, %rcx
rep movsb
nop
nop
nop
nop
cmp $46285, %r8
lea addresses_normal_ht+0x1b1af, %rax
sub $19235, %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm0
vmovups %ymm0, (%rax)
nop
add %r13, %r13
lea addresses_UC_ht+0x1e5af, %r8
nop
nop
and $31639, %rcx
mov $0x6162636465666768, %r12
movq %r12, %xmm7
vmovups %ymm7, (%r8)
nop
nop
nop
dec %rdi
lea addresses_A_ht+0x3a97, %rcx
nop
nop
nop
nop
nop
dec %r12
vmovups (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdx
nop
nop
cmp $20072, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdx

// Load
lea addresses_D+0x198af, %r12
nop
nop
nop
sub $20391, %rcx
mov (%r12), %r8d
nop
nop
nop
nop
sub %rdx, %rdx

// Load
lea addresses_WC+0xf9af, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
cmp %rax, %rax
mov (%rdx), %r8
nop
nop
nop
nop
dec %r8

// Store
mov $0x388c7e00000000ce, %rax
nop
sub %r13, %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
vmovaps %ymm4, (%rax)
nop
nop
xor $57779, %r12

// Store
lea addresses_WT+0x151af, %r13
nop
nop
nop
nop
nop
dec %r12
movw $0x5152, (%r13)
nop
nop
nop
nop
nop
cmp $32538, %rdx

// Store
mov $0x32e82100000009af, %r8
clflush (%r8)
cmp $59738, %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm4
vmovups %ymm4, (%r8)
nop
nop
xor %r12, %r12

// Faulty Load
lea addresses_WT+0x151af, %r14
nop
nop
nop
nop
inc %r13
vmovntdqa (%r14), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': True, 'type': 'addresses_D', 'same': False, 'AVXalign': True, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': True, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'44': 7119, 'c9': 14, '72': 1, '08': 74, 'ff': 76, '45': 49, '00': 8125, '47': 33}
00 00 00 00 00 00 00 00 00 00 00 44 00 44 44 44 44 00 00 44 00 00 00 00 00 00 00 00 00 00 44 44 00 44 44 44 00 44 44 00 44 00 44 00 00 00 00 00 00 00 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 00 00 00 00 44 00 00 44 00 44 44 44 44 44 44 00 00 00 00 44 00 00 44 00 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 00 00 00 44 00 00 00 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 00 00 00 00 00 00 44 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 44 44 00 00 00 44 44 00 08 00 08 08 08 08 08 08 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 00 00 44 44 00 44 00 00 00 44 44 00 00 44 00 00 00 00 44 00 00 00 44 44 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 44 44 44 00 00 00 44 44 44 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 44 44 00 44 00 00 44 00 44 00 00 00 44 44 00 00 00 00 00 00 00 44 00 44 44 00 00 00 44 00 00 00 00 00 44 00 00 00 00 44 00 00 44 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 00 44 00 00 00 00 00 00 44 00 00 00 44 00 00 00 44 00 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 00 44 44 00 00 00 00 00 00 00 44 00 44 00 00 00 00 44 00 44 44 44 00 00 44 00 00 00 44 44 00 00 00 00 00 00 00 44 44 00 00 44 44 00 00 44 44 44 44 44 44 44 44 44 44 00 00 44 00 44 44 00 00 44 44 00 00 44 00 44 44 00 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 00 44 44 44 44 44 00 44 00 00 00 00 44 44 00 00 00 00 00 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 00 00 44 00 00 00 00 00 44 44 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 00 00 00 44 44 44 44 44 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 44 44 00 00 00 44 00 00 00 00 44 00 44 00 00 00 00 44 00 00 00 00 44 44 00 00 00 00 00 44 44 00 00 44 44 00 44 00 00 00 00 44 44 00 00 44 00 00 44 00 00 44 00 44 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 44 00 44 44 00 44 44 00 44 00 00 44 00 00 00 00 44 44 00 00 00 00 44 00 44 00 00 00 00 44 00 00 00 00 00 44 44 00 00 00 44 00 44 44 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 00 00 00 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 00 44 45 44 45 45 44 00 00 00 00 00 00 00 00 00
*/
