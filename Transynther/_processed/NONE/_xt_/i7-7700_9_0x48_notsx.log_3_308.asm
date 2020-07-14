.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x2fc5, %r11
clflush (%r11)
nop
nop
nop
nop
nop
dec %rbp
vmovups (%r11), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r10
xor %rax, %rax
lea addresses_A_ht+0x1803e, %rcx
nop
nop
nop
dec %r10
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
and $49443, %rbp
lea addresses_WT_ht+0x1cc5, %rsi
lea addresses_D_ht+0x4dc9, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and %r11, %r11
mov $107, %rcx
rep movsq
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x4ac5, %rsi
nop
nop
nop
sub $705, %rdi
movups (%rsi), %xmm4
vpextrq $1, %xmm4, %rax
nop
nop
cmp $12523, %r11
lea addresses_normal_ht+0xaac5, %rsi
nop
nop
inc %r13
mov (%rsi), %r10d
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_D_ht+0x128f1, %rsi
nop
nop
nop
sub %r11, %r11
mov $0x6162636465666768, %r13
movq %r13, %xmm0
vmovups %ymm0, (%rsi)
nop
add $42937, %r10
lea addresses_normal_ht+0x8bfd, %rax
nop
xor %r10, %r10
mov (%rax), %r13w
xor $25788, %r13
lea addresses_WT_ht+0x1d685, %rbp
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %r10
movq %r10, (%rbp)
inc %rcx
lea addresses_D_ht+0x10105, %rcx
nop
cmp %r13, %r13
movb (%rcx), %r10b
nop
nop
nop
nop
nop
dec %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_RW+0x185e9, %rbp
nop
nop
nop
nop
nop
xor %rdi, %rdi
vmovups (%rbp), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r14
nop
dec %r14

// Store
lea addresses_normal+0x75c5, %r13
nop
nop
nop
nop
nop
add %r15, %r15
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
movups %xmm5, (%r13)
nop
nop
nop
nop
nop
add $33195, %r10

// Store
lea addresses_PSE+0xefc5, %r10
clflush (%r10)
nop
nop
nop
xor $63620, %r14
mov $0x5152535455565758, %r15
movq %r15, (%r10)
dec %r10

// Store
lea addresses_WC+0x87c5, %rdi
nop
nop
xor %r13, %r13
movw $0x5152, (%rdi)
nop
cmp %rbp, %rbp

// REPMOV
lea addresses_WT+0xafc5, %rsi
lea addresses_PSE+0x1ed7f, %rdi
nop
nop
nop
nop
nop
dec %rbp
mov $4, %rcx
rep movsl
inc %rsi

// Store
mov $0x2e6720000000895, %r10
clflush (%r10)
nop
nop
nop
nop
add $48494, %rbp
movb $0x51, (%r10)
nop
and $63020, %rcx

// Store
mov $0xc45, %rbx
and %r13, %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rbx)
nop
nop
nop
sub $56800, %rcx

// Store
mov $0x3fc8a20000000b8f, %rbp
nop
nop
xor $63310, %r10
movl $0x51525354, (%rbp)
nop
nop
add $56292, %r13

// Faulty Load
lea addresses_RW+0x1bfc5, %rsi
clflush (%rsi)
nop
sub %r14, %r14
movups (%rsi), %xmm4
vpextrq $0, %xmm4, %rdi
lea oracles, %rbx
and $0xff, %rdi
shlq $12, %rdi
mov (%rbx,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_P', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 1}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 6}}
{'32': 3}
32 32 32
*/
