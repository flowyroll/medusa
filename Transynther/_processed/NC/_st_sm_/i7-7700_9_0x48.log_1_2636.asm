.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r8
push %rax
push %rdi
push %rdx
lea addresses_D_ht+0x18bad, %rdx
nop
nop
nop
nop
add %r12, %r12
and $0xffffffffffffffc0, %rdx
movaps (%rdx), %xmm3
vpextrq $0, %xmm3, %rax
nop
nop
nop
sub $60150, %r8
lea addresses_WT_ht+0x5a2d, %r14
clflush (%r14)
sub $4405, %rdx
mov (%r14), %r11d
nop
nop
cmp $30311, %r8
lea addresses_UC_ht+0xf5ad, %r11
clflush (%r11)
nop
nop
nop
sub $53028, %rdi
movups (%r11), %xmm3
vpextrq $0, %xmm3, %r12
nop
sub $40333, %r8
lea addresses_A_ht+0x9ffc, %rdi
nop
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %rax
movq %rax, (%rdi)
nop
nop
nop
cmp %r8, %r8
lea addresses_WT_ht+0xa2cd, %rdx
nop
dec %r11
mov $0x6162636465666768, %r14
movq %r14, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
nop
sub %r14, %r14
lea addresses_normal_ht+0x193d2, %rdi
nop
nop
and $37597, %rdx
mov $0x6162636465666768, %r14
movq %r14, %xmm5
and $0xffffffffffffffc0, %rdi
vmovntdq %ymm5, (%rdi)
cmp $11922, %r12
lea addresses_WT_ht+0x1c205, %r12
clflush (%r12)
nop
cmp %rax, %rax
mov (%r12), %r11w
nop
nop
nop
nop
sub %rdi, %rdi
pop %rdx
pop %rdi
pop %rax
pop %r8
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rsi

// Store
lea addresses_US+0x18d3d, %r13
nop
nop
cmp $48778, %rax
mov $0x5152535455565758, %r14
movq %r14, (%r13)
nop
nop
nop
xor $33751, %rsi

// Load
lea addresses_PSE+0x71ab, %r15
clflush (%r15)
nop
nop
nop
nop
cmp %rcx, %rcx
vmovups (%r15), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r13
nop
dec %rax

// Store
mov $0x2cebd000000005ad, %rax
clflush (%rax)
nop
nop
nop
nop
nop
add %r13, %r13
movw $0x5152, (%rax)
nop
nop
cmp %rcx, %rcx

// Store
mov $0x65865100000006ad, %r15
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %rsi
movq %rsi, (%r15)
nop
cmp %rcx, %rcx

// Load
lea addresses_RW+0x1ad, %r8
nop
nop
nop
nop
sub $64194, %rax
movb (%r8), %cl
nop
nop
nop
nop
xor $36553, %rcx

// Store
lea addresses_PSE+0x1a7ad, %r14
nop
nop
cmp $12647, %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovups %ymm1, (%r14)
nop
nop
nop
sub %rcx, %rcx

// Store
mov $0x2cebd000000005ad, %r8
nop
inc %r15
mov $0x5152535455565758, %rsi
movq %rsi, (%r8)
inc %r14

// Store
lea addresses_UC+0xb9ed, %r15
nop
nop
nop
nop
xor $20409, %rax
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r15)
nop
inc %rcx

// Faulty Load
mov $0x2cebd000000005ad, %r13
sub %rax, %rax
mov (%r13), %r15
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'58': 1}
58
*/
