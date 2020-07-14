.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x17af3, %rsi
lea addresses_normal_ht+0x109a3, %rdi
add %r8, %r8
mov $94, %rcx
rep movsb
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_UC_ht+0x1e000, %rbx
cmp %r8, %r8
vmovups (%rbx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
and %rsi, %rsi
lea addresses_UC_ht+0xb8f3, %rbx
nop
nop
nop
nop
xor $35662, %r10
mov $0x6162636465666768, %r8
movq %r8, %xmm3
movups %xmm3, (%rbx)
nop
sub %r10, %r10
lea addresses_D_ht+0x5b6d, %r11
nop
nop
and $48129, %r10
vmovups (%r11), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
nop
and $2818, %r11
lea addresses_UC_ht+0x148f7, %rsi
lea addresses_D_ht+0x6679, %rdi
nop
nop
add %r13, %r13
mov $6, %rcx
rep movsw
cmp $22361, %rsi
lea addresses_D_ht+0x31b3, %rsi
lea addresses_D_ht+0x162f3, %rdi
clflush (%rsi)
clflush (%rdi)
xor %r11, %r11
mov $42, %rcx
rep movsb
nop
nop
xor $7664, %r10
lea addresses_D_ht+0xc7b3, %r8
clflush (%r8)
nop
nop
add $36034, %rdi
movb $0x61, (%r8)
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_UC_ht+0x13cf3, %rsi
lea addresses_WT_ht+0x1e2f3, %rdi
clflush (%rdi)
sub $35233, %r13
mov $118, %rcx
rep movsw
nop
nop
cmp $12115, %r10
lea addresses_normal_ht+0x1a003, %rcx
nop
nop
sub $47675, %r8
mov (%rcx), %edi
nop
nop
nop
nop
sub $62448, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r8
push %rbx
push %rdx

// Store
lea addresses_A+0xcda3, %r8
nop
dec %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm3
movups %xmm3, (%r8)
nop
nop
add %r12, %r12

// Store
lea addresses_US+0x1d96b, %r10
nop
nop
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %rdx
movq %rdx, (%r10)
nop
nop
and %r10, %r10

// Faulty Load
mov $0x2f3, %r15
nop
nop
inc %rdx
vmovntdqa (%r15), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r12
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rdx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_US', 'same': False, 'AVXalign': True, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_P', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 2}}
{'44': 3, '00': 14111, '46': 7701, '47': 14}
00 00 00 46 00 46 46 46 46 00 00 46 46 00 46 00 00 46 00 00 46 00 00 00 00 46 00 00 00 00 46 46 46 46 00 00 46 00 00 46 00 00 46 00 00 46 46 00 00 46 00 00 46 00 00 46 00 00 46 46 00 46 00 46 46 46 00 00 00 00 00 00 00 00 46 46 00 46 00 46 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 46 46 46 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 46 00 00 00 46 00 00 46 00 00 00 00 46 00 46 46 00 46 00 46 00 00 00 00 00 46 00 00 46 46 46 46 00 00 00 00 46 00 00 46 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 46 46 46 00 00 00 46 00 46 46 00 46 00 00 00 46 00 46 46 00 00 00 00 46 46 00 00 00 00 00 00 46 00 00 46 00 00 46 00 00 46 00 00 00 00 00 46 46 00 46 00 00 00 46 46 00 00 46 46 00 00 46 00 46 46 00 00 00 46 00 00 00 00 46 00 46 00 00 00 46 46 00 46 46 46 00 00 46 00 46 00 00 46 00 46 00 00 00 00 00 00 00 46 46 00 46 00 00 00 00 46 46 00 46 00 46 46 46 46 46 00 00 00 00 00 00 46 46 46 00 00 00 00 46 46 00 46 00 46 00 00 00 46 00 00 46 00 00 46 00 46 00 00 00 00 46 00 00 00 00 46 00 00 46 46 46 00 46 00 46 00 00 46 46 46 46 00 46 46 46 46 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 46 00 46 00 00 46 46 00 00 00 46 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 46 46 46 46 00 46 00 00 46 00 00 46 46 46 00 00 00 00 00 00 46 00 46 00 00 46 00 00 46 46 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 46 46 00 46 46 46 46 00 46 00 00 00 00 46 46 46 00 46 00 00 46 00 46 46 00 00 46 00 46 00 00 46 00 00 46 46 46 46 46 00 00 00 46 46 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 46 00 00 46 00 00 00 46 46 00 00 00 46 00 00 46 46 00 00 00 00 46 00 00 46 46 00 00 46 00 46 46 00 46 46 00 46 00 00 00 46 00 00 00 00 46 46 00 00 46 00 00 46 00 46 46 46 46 00 00 00 00 00 00 00 00 00 46 00 46 46 00 00 00 00 46 00 00 46 46 46 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 46 00 46 00 00 00 46 00 00 46 46 46 00 46 46 00 46 46 46 46 46 00 00 00 00 00 00 46 46 00 00 46 00 00 00 46 46 46 00 46 00 46 00 00 00 00 00 46 46 46 00 00 00 00 46 00 00 00 00 46 00 00 46 46 00 00 46 47 46 46 46 46 00 00 46 00 00 46 00 00 46 00 00 46 00 46 00 00 00 46 00 46 46 00 46 46 00 00 00 00 00 00 00 00 46 00 00 46 00 46 46 00 46 00 46 46 00 46 46 46 46 46 46 46 00 00 46 00 46 00 00 00 46 00 46 00 00 00 00 00 46 46 46 46 46 00 46 00 46 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 46 44 46 00 46 46 00 00 00 00 00 46 46 00 00 00 00 46 00 00 00 46 46 00 00 46 46 46 00 00 00 46 46 46 00 00 46 46 46 46 00 46 00 46 00 00 46 00 46 00 00 46 46 46 00 00 46 46 00 46 46 46 00 00 00 00 00 00 00 00 46 46 46 46 46 00 46 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 46 46 46 00 00 46 46 00 00 46 00 00 00 00 00 00 00 46 00 00 46 00 46 46 00 00 00 00 00 00 00 00 46 00 00 46 46 00 46 00 46 00 46 00 00 00 00 00 00 46 00 00 46 00 46 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 46 00 00 00 00 46 46 46 00 00 46 46 46 46 00 46 00 00 46 46 46 00 00 46 00 00 00 00 00 00 00 00 46
*/
