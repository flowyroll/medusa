.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xede4, %rsi
lea addresses_normal_ht+0x18b04, %rdi
add %r11, %r11
mov $5, %rcx
rep movsw
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x12c84, %rsi
lea addresses_D_ht+0x19704, %rdi
nop
nop
nop
nop
nop
and $42428, %r11
mov $124, %rcx
rep movsl
inc %rbx
lea addresses_WT_ht+0x14304, %r13
nop
and $8728, %rdx
movb (%r13), %cl
nop
xor %rdx, %rdx
lea addresses_D_ht+0x1d3ac, %rbx
clflush (%rbx)
nop
nop
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%rbx)
nop
nop
cmp $39764, %rdi
lea addresses_UC_ht+0x2c44, %rdx
nop
nop
nop
nop
add $8049, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%rdx)
nop
nop
xor %r11, %r11
lea addresses_WT_ht+0x17b84, %rdi
inc %r13
movw $0x6162, (%rdi)
nop
inc %rdi
lea addresses_A_ht+0x7a14, %rsi
lea addresses_WT_ht+0x51f4, %rdi
nop
nop
nop
inc %r10
mov $30, %rcx
rep movsw
nop
cmp %r11, %r11
lea addresses_D_ht+0x1cd8c, %rbx
nop
nop
xor %r10, %r10
movl $0x61626364, (%rbx)
nop
and $30588, %r11
lea addresses_WT_ht+0x3e54, %rcx
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %r11
movq %r11, %xmm6
movups %xmm6, (%rcx)
nop
and $26222, %r10
lea addresses_D_ht+0xdb2a, %rdx
add %rdi, %rdi
mov (%rdx), %r13
nop
nop
nop
and $8023, %rcx
lea addresses_UC_ht+0xf704, %r13
nop
nop
nop
nop
nop
sub %r11, %r11
movl $0x61626364, (%r13)
nop
nop
and $10686, %rdi
lea addresses_normal_ht+0x4304, %r10
nop
nop
nop
nop
nop
add $19777, %rbx
movw $0x6162, (%r10)
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_WT_ht+0x7ff8, %r11
nop
and %r10, %r10
mov (%r11), %cx
nop
inc %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_A+0x11304, %rbx
nop
nop
dec %rdi
mov (%rbx), %r11w
nop
nop
nop
nop
nop
and %rbx, %rbx

// Load
lea addresses_A+0x193f4, %r10
nop
nop
nop
and $10825, %rcx
vmovups (%r10), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
add %r11, %r11

// Store
lea addresses_US+0x6b74, %rax
nop
nop
cmp %r11, %r11
movl $0x51525354, (%rax)
nop
nop
nop
add $2620, %rcx

// Store
mov $0x3fb3d40000000304, %r11
nop
nop
add %rax, %rax
mov $0x5152535455565758, %rdi
movq %rdi, (%r11)
nop
add $11695, %rbx

// Store
lea addresses_UC+0x1ed04, %rdi
nop
nop
nop
inc %rbx
mov $0x5152535455565758, %r10
movq %r10, (%rdi)
cmp $27040, %r11

// Store
lea addresses_PSE+0xd0e4, %rbx
nop
dec %rdi
mov $0x5152535455565758, %r10
movq %r10, (%rbx)
nop
sub $19784, %rax

// Store
lea addresses_UC+0x3cc4, %r11
nop
nop
nop
nop
dec %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r11)
nop
nop
nop
add $53332, %rsi

// Store
lea addresses_WC+0x16e64, %r11
nop
xor $1006, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
movntdq %xmm7, (%r11)
nop
nop
nop
nop
nop
dec %r11

// Store
lea addresses_RW+0x1304, %rdi
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %r11
movq %r11, %xmm5
movups %xmm5, (%rdi)
nop
nop
sub %r10, %r10

// Store
lea addresses_PSE+0x4b04, %r10
nop
xor %rcx, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
movaps %xmm0, (%r10)
nop
nop
nop
nop
and %rcx, %rcx

// Faulty Load
lea addresses_RW+0x1304, %rcx
clflush (%rcx)
cmp $47737, %rax
mov (%rcx), %r10w
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_RW', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_PSE', 'same': False, 'AVXalign': True, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 5}, 'dst': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 4}, 'dst': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'58': 4}
58 58 58 58
*/
