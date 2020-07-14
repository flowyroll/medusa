.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x465f, %rax
nop
nop
nop
nop
and %r14, %r14
movw $0x6162, (%rax)
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x18ed3, %rbx
clflush (%rbx)
nop
nop
nop
xor %rcx, %rcx
vmovups (%rbx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
add $51473, %r11
lea addresses_A_ht+0x1b3df, %rsi
lea addresses_WC_ht+0x10e1f, %rdi
dec %r12
mov $102, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rsi
lea addresses_D_ht+0x13b37, %rdi
clflush (%rdi)
nop
and %rcx, %rcx
mov (%rdi), %si
add $26564, %rdi
lea addresses_A_ht+0x165df, %r11
nop
nop
nop
sub $42775, %rdi
mov (%r11), %r14w
nop
nop
nop
nop
xor $145, %rsi
lea addresses_A_ht+0x1e75f, %rcx
nop
nop
nop
nop
nop
dec %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
movups %xmm7, (%rcx)
nop
nop
nop
dec %rdi
lea addresses_D_ht+0xbd13, %rax
nop
nop
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%rax)
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rax
push %rbp
push %rdx

// Load
lea addresses_D+0xc19f, %rbp
nop
nop
nop
nop
and %r10, %r10
mov (%rbp), %r14d
xor %r10, %r10

// Store
lea addresses_D+0x12e1f, %r14
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r11
movq %r11, %xmm1
vmovups %ymm1, (%r14)
nop
nop
nop
lfence

// Faulty Load
mov $0x61f, %rax
nop
nop
nop
nop
and $42687, %r8
mov (%rax), %bp
lea oracles, %r10
and $0xff, %rbp
shlq $12, %rbp
mov (%r10,%rbp,1), %rbp
pop %rdx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_P', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 9}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_P', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 6}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 1}, 'OP': 'STOR'}
{'00': 14}
00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
