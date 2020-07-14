.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdx
lea addresses_D_ht+0x1d115, %r8
nop
sub $6790, %rcx
movl $0x61626364, (%r8)
nop
nop
nop
sub $53838, %rax
lea addresses_WC_ht+0x37c5, %r9
nop
nop
nop
dec %rdx
mov $0x6162636465666768, %r14
movq %r14, %xmm7
movups %xmm7, (%r9)
nop
nop
nop
nop
dec %r8
lea addresses_WC_ht+0x1b81, %r9
nop
cmp $26200, %r14
mov (%r9), %r12w
nop
nop
add %rdx, %rdx
lea addresses_WT_ht+0x8105, %r12
nop
nop
nop
cmp %rdx, %rdx
movb $0x61, (%r12)
inc %rdx
lea addresses_UC_ht+0x83c5, %rdx
nop
nop
nop
cmp $14445, %r9
mov (%rdx), %ecx
nop
nop
nop
nop
and $42600, %r12
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rsi

// Load
mov $0x320a240000000885, %rax
clflush (%rax)
nop
nop
nop
xor $1263, %r9
movups (%rax), %xmm0
vpextrq $1, %xmm0, %r14
nop
nop
nop
nop
xor $44430, %r8

// Faulty Load
mov $0x357d6300000003c5, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
cmp %r11, %r11
vmovups (%rbp), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rax
lea oracles, %rbp
and $0xff, %rax
shlq $12, %rax
mov (%rbp,%rax,1), %rax
pop %rsi
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'60': 1}
60
*/
