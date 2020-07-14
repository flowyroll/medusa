.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xc92b, %rbx
nop
dec %rdx
movb (%rbx), %r9b
nop
inc %r10
lea addresses_WC_ht+0x922b, %r11
nop
nop
nop
nop
sub %r14, %r14
movw $0x6162, (%r11)
nop
add $129, %r11
lea addresses_A_ht+0xbe6b, %r14
nop
lfence
and $0xffffffffffffffc0, %r14
vmovaps (%r14), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r9
nop
nop
nop
nop
nop
cmp $46009, %rdi
lea addresses_WT_ht+0xe1ab, %rbx
nop
xor $48855, %r9
movb $0x61, (%rbx)
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_D_ht+0x1a9ab, %r11
nop
nop
nop
nop
nop
cmp $23807, %r14
mov (%r11), %rdi
nop
nop
add $26036, %rdi
lea addresses_WC_ht+0x8c1b, %rsi
lea addresses_normal_ht+0x1b017, %rdi
nop
cmp $26215, %rdx
mov $17, %rcx
rep movsq
nop
and %r14, %r14
lea addresses_normal_ht+0xda2b, %rcx
nop
nop
nop
sub %r11, %r11
movl $0x61626364, (%rcx)
nop
inc %r9
lea addresses_WT_ht+0x258b, %r9
nop
nop
sub %r10, %r10
movl $0x61626364, (%r9)
nop
nop
nop
nop
nop
and $39105, %rdi
lea addresses_D_ht+0x768b, %rsi
lea addresses_D_ht+0xb83, %rdi
clflush (%rdi)
nop
inc %r9
mov $117, %rcx
rep movsl
nop
nop
nop
nop
nop
and $34788, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rax
push %rbx
push %rsi

// Store
mov $0x6e0926000000086b, %rax
nop
nop
nop
nop
nop
cmp $27956, %rbx
movw $0x5152, (%rax)
nop
and %r14, %r14

// Faulty Load
lea addresses_RW+0xf62b, %rbx
clflush (%rbx)
nop
xor $19512, %rsi
mov (%rbx), %r10
lea oracles, %rsi
and $0xff, %r10
shlq $12, %r10
mov (%rsi,%r10,1), %r10
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 6}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 6}}
{'dst': {'same': True, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'32': 90}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
