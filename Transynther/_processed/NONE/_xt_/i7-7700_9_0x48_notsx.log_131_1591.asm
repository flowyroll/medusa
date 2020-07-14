.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x15c73, %rsi
nop
nop
nop
nop
nop
inc %rax
movb $0x61, (%rsi)
nop
and %rdx, %rdx
lea addresses_normal_ht+0x138bb, %r11
nop
nop
nop
nop
nop
inc %r13
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
movups %xmm5, (%r11)
nop
nop
and %r13, %r13
lea addresses_D_ht+0x196b3, %r13
inc %rdx
movl $0x61626364, (%r13)
add $22149, %rdx
lea addresses_D_ht+0x1ece1, %r15
nop
cmp %rdx, %rdx
movl $0x61626364, (%r15)
nop
nop
nop
sub $5396, %rdx
lea addresses_normal_ht+0xce6d, %rsi
lea addresses_A_ht+0xc471, %rdi
nop
nop
nop
nop
nop
xor $19386, %rax
mov $91, %rcx
rep movsw
xor %rax, %rax
lea addresses_UC_ht+0x1ca01, %rsi
lea addresses_WT_ht+0x1c051, %rdi
clflush (%rsi)
nop
nop
xor $26408, %rbx
mov $91, %rcx
rep movsw
nop
sub %rdi, %rdi
lea addresses_A_ht+0x5901, %rsi
lea addresses_WT_ht+0x18e01, %rdi
nop
nop
xor %r13, %r13
mov $5, %rcx
rep movsq
nop
nop
nop
nop
sub %r11, %r11
lea addresses_D_ht+0x11c1, %rdx
clflush (%rdx)
add %rsi, %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm0
movups %xmm0, (%rdx)
xor %r13, %r13
lea addresses_WC_ht+0xaa01, %rdi
nop
nop
nop
nop
nop
dec %rdx
mov (%rdi), %r11
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_A_ht+0x11d81, %rsi
lea addresses_normal_ht+0x1c01, %rdi
clflush (%rsi)
nop
nop
cmp %rax, %rax
mov $43, %rcx
rep movsl
nop
inc %rbx
lea addresses_normal_ht+0x1e637, %r15
clflush (%r15)
add %rbx, %rbx
vmovups (%r15), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rax
nop
nop
and %rbx, %rbx
lea addresses_WT_ht+0x15731, %rbx
sub $33912, %rdi
mov (%rbx), %si
and $11334, %rbx
lea addresses_D_ht+0x4a01, %r11
nop
sub %rcx, %rcx
mov (%r11), %r15
xor $45346, %rcx
lea addresses_UC_ht+0x19a63, %r13
clflush (%r13)
xor $41408, %rdi
movl $0x61626364, (%r13)
nop
nop
nop
dec %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rbx
push %rdi
push %rdx

// Store
mov $0x58b0bd00000008e5, %r10
nop
nop
nop
cmp %rdi, %rdi
movw $0x5152, (%r10)
nop
xor $11197, %r10

// Load
lea addresses_US+0x1ae01, %rdi
nop
xor $12951, %r11
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %rdx
nop
cmp %r8, %r8

// Faulty Load
lea addresses_PSE+0x7201, %rbx
nop
nop
and %rdx, %rdx
mov (%rbx), %r11w
lea oracles, %r8
and $0xff, %r11
shlq $12, %r11
mov (%r8,%r11,1), %r11
pop %rdx
pop %rdi
pop %rbx
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 3, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'33': 131}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
