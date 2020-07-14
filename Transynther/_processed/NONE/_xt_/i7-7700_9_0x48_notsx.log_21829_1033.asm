.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x18ad0, %rsi
sub %rcx, %rcx
movl $0x61626364, (%rsi)
nop
nop
nop
add %rax, %rax
lea addresses_WT_ht+0x22a0, %rsi
lea addresses_WT_ht+0x6738, %rdi
nop
nop
add %rax, %rax
mov $57, %rcx
rep movsl
nop
nop
nop
and %rax, %rax
lea addresses_A_ht+0x127a8, %rsi
lea addresses_WC_ht+0xefe8, %rdi
clflush (%rsi)
nop
nop
xor $48589, %rdx
mov $60, %rcx
rep movsw
nop
xor $47748, %rdi
lea addresses_D_ht+0x11fe8, %rdi
nop
nop
nop
cmp %rsi, %rsi
mov (%rdi), %rcx
nop
nop
sub $53598, %rdx
lea addresses_normal_ht+0x1b0ce, %rbx
nop
dec %r9
movb (%rbx), %cl
cmp %rcx, %rcx
lea addresses_WC_ht+0xd228, %rax
nop
xor $49525, %rsi
movups (%rax), %xmm5
vpextrq $1, %xmm5, %rdi
cmp %rdi, %rdi
lea addresses_WT_ht+0x14f08, %r9
clflush (%r9)
nop
sub $39680, %rsi
movl $0x61626364, (%r9)
nop
and %rcx, %rcx
lea addresses_D_ht+0x1dfd2, %rcx
nop
nop
nop
nop
add $30381, %rdx
mov (%rcx), %ebx
xor $25911, %r9
lea addresses_WC_ht+0x63e8, %rax
nop
add $803, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%rax)
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x17508, %rcx
nop
nop
nop
nop
sub %rsi, %rsi
movl $0x61626364, (%rcx)
nop
cmp $13829, %rbx
lea addresses_A_ht+0x1ba60, %rax
clflush (%rax)
nop
add $35103, %rcx
vmovups (%rax), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdx
nop
nop
nop
and %r9, %r9
lea addresses_D_ht+0x1bfe8, %rsi
lea addresses_A_ht+0x18628, %rdi
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $118, %rcx
rep movsw
nop
nop
nop
nop
cmp $42492, %rbp
lea addresses_A_ht+0x16722, %rsi
lea addresses_normal_ht+0x4b88, %rdi
clflush (%rsi)
nop
add $38579, %r9
mov $50, %rcx
rep movsb
xor %rdi, %rdi
lea addresses_WT_ht+0x7cfc, %rcx
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov (%rcx), %si
nop
nop
inc %rcx
lea addresses_normal_ht+0x1eaa8, %rsi
lea addresses_normal_ht+0xa7e8, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $37950, %rbx
mov $43, %rcx
rep movsl
nop
inc %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x2de8, %r8
nop
nop
inc %rdi
movw $0x5152, (%r8)
nop
nop
nop
nop
xor $61084, %r11

// Load
lea addresses_UC+0x187e8, %r8
add %rdi, %rdi
mov (%r8), %edx
nop
xor %r11, %r11

// REPMOV
lea addresses_D+0x1fab0, %rsi
lea addresses_D+0x170c8, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
cmp $59850, %r13
mov $42, %rcx
rep movsl
nop
sub %r9, %r9

// Store
lea addresses_WT+0x1a5a0, %rsi
nop
sub %rdx, %rdx
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
dec %r8

// Faulty Load
lea addresses_RW+0x87e8, %r11
nop
add $22307, %r13
movb (%r11), %r9b
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 10}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_D'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 1}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
