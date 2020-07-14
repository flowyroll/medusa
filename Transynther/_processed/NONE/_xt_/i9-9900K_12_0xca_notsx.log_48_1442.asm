.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x11ec5, %rsi
lea addresses_WT_ht+0x7b23, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $41055, %rax
mov $59, %rcx
rep movsq
nop
nop
and %r10, %r10
lea addresses_normal_ht+0xfa2d, %r10
nop
nop
nop
nop
sub %rbx, %rbx
movb $0x61, (%r10)
nop
nop
nop
nop
dec %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rsi

// Store
lea addresses_US+0x10ab9, %r11
clflush (%r11)
nop
sub $51452, %rcx
movl $0x51525354, (%r11)
add $18262, %r9

// Load
lea addresses_A+0x8bc5, %r11
nop
nop
nop
xor %rbx, %rbx
and $0xffffffffffffffc0, %r11
movntdqa (%r11), %xmm3
vpextrq $1, %xmm3, %rax
nop
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_normal+0x18a45, %rbx
clflush (%rbx)
nop
nop
sub %r13, %r13
movb $0x51, (%rbx)
nop
nop
nop
cmp %r13, %r13

// Store
lea addresses_WT+0x1e45, %rbx
nop
nop
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm2
movups %xmm2, (%rbx)
nop
inc %rsi

// Load
lea addresses_RW+0x8a45, %rax
nop
nop
nop
xor $26893, %rbx
movups (%rax), %xmm0
vpextrq $0, %xmm0, %r13
nop
nop
inc %rax

// Store
lea addresses_RW+0xb5c5, %r11
nop
nop
nop
nop
dec %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
vmovups %ymm3, (%r11)
nop
nop
nop
nop
nop
xor %rsi, %rsi

// Load
lea addresses_US+0x1c1bd, %rcx
nop
nop
and $8620, %r13
movups (%rcx), %xmm0
vpextrq $0, %xmm0, %rbx
nop
nop
nop
nop
and %r11, %r11

// Faulty Load
lea addresses_normal+0xe45, %rsi
nop
nop
nop
nop
nop
add $40343, %r11
mov (%rsi), %r13w
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'34': 48}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
