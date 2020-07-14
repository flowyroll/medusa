.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x2594, %r14
nop
nop
nop
nop
inc %rsi
movw $0x6162, (%r14)
nop
nop
and %r8, %r8
lea addresses_UC_ht+0x1c514, %rdx
nop
nop
nop
and $33327, %r10
movl $0x61626364, (%rdx)
nop
nop
cmp %r10, %r10
lea addresses_normal_ht+0x16de4, %rsi
lea addresses_normal_ht+0xaf94, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $44210, %r11
mov $51, %rcx
rep movsq
nop
nop
add %r8, %r8
lea addresses_D_ht+0xc454, %rsi
nop
nop
cmp $22332, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%rsi)
nop
nop
nop
nop
sub %r10, %r10
lea addresses_UC_ht+0x1be7e, %r11
clflush (%r11)
and $4344, %rsi
movups (%r11), %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
nop
nop
nop
xor $40256, %rcx
lea addresses_WT_ht+0xcc94, %r11
nop
sub $16854, %rsi
mov (%r11), %r8d
nop
nop
cmp %r11, %r11
lea addresses_UC_ht+0x13b94, %r11
nop
nop
nop
nop
nop
sub $14079, %r8
movb (%r11), %r10b
nop
nop
nop
nop
nop
xor $55201, %rcx
lea addresses_D_ht+0x16de4, %rsi
lea addresses_A_ht+0x1ef94, %rdi
nop
xor $17787, %r11
mov $30, %rcx
rep movsq
nop
nop
nop
sub $30256, %rdi
lea addresses_A_ht+0x11114, %r10
nop
nop
sub %rdx, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, (%r10)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x14fb3, %rsi
lea addresses_normal_ht+0xa714, %rdi
add $60746, %r8
mov $85, %rcx
rep movsw
dec %r10
lea addresses_UC_ht+0x36d4, %rdi
add %r10, %r10
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r11
nop
nop
nop
nop
nop
sub $64237, %rcx
lea addresses_A_ht+0x2394, %r14
nop
xor $60875, %rdi
movups (%r14), %xmm0
vpextrq $1, %xmm0, %rcx
nop
nop
inc %r8
lea addresses_D_ht+0x1dc94, %r8
clflush (%r8)
nop
nop
sub %rdx, %rdx
mov $0x6162636465666768, %r10
movq %r10, %xmm0
vmovups %ymm0, (%r8)
nop
sub $8500, %rcx
lea addresses_UC_ht+0x1c114, %r11
nop
nop
and %r10, %r10
movb $0x61, (%r11)
nop
nop
nop
dec %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_RW+0x1daca, %rsi
dec %rax
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_normal+0x13b14, %r13
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
movups %xmm0, (%r13)
xor $50375, %rsi

// Load
lea addresses_RW+0x69b4, %r13
nop
nop
nop
cmp $55834, %rsi
mov (%r13), %r9
inc %rbx

// Load
lea addresses_PSE+0x8654, %r9
nop
cmp $32443, %rcx
movups (%r9), %xmm0
vpextrq $1, %xmm0, %r13
nop
nop
nop
nop
nop
sub $57836, %rsi

// Store
lea addresses_UC+0xd694, %r9
and %rbx, %rbx
movb $0x51, (%r9)
nop
nop
and %rax, %rax

// Load
lea addresses_WT+0xcf7b, %rax
clflush (%rax)
cmp %rsi, %rsi
movb (%rax), %r9b
nop
nop
nop
nop
sub $34878, %rsi

// Load
lea addresses_WC+0x11394, %r9
nop
nop
nop
and %rcx, %rcx
mov (%r9), %r13w
nop
nop
nop
inc %r9

// Faulty Load
lea addresses_UC+0x7b94, %r13
clflush (%r13)
nop
nop
and $48937, %rax
movb (%r13), %r9b
lea oracles, %r13
and $0xff, %r9
shlq $12, %r9
mov (%r13,%r9,1), %r9
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': True, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'00': 384}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
