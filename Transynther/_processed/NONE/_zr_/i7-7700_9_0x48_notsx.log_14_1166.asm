.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1383, %r13
nop
nop
nop
nop
and $880, %r11
mov (%r13), %esi
nop
nop
nop
nop
nop
sub $26459, %rbx
lea addresses_A_ht+0x17243, %rsi
lea addresses_WC_ht+0x1c243, %rdi
nop
inc %r15
mov $69, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x743, %rcx
nop
nop
nop
mfence
mov (%rcx), %r15w
nop
add %r11, %r11
lea addresses_normal_ht+0x19633, %r11
nop
nop
nop
nop
nop
add $16006, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, (%r11)
nop
inc %rsi
lea addresses_D_ht+0x1625f, %rsi
lea addresses_normal_ht+0x10cd9, %rdi
nop
nop
sub %r8, %r8
mov $87, %rcx
rep movsb
nop
nop
add $7427, %rcx
lea addresses_WT_ht+0x1a543, %r8
nop
nop
add %rdi, %rdi
movw $0x6162, (%r8)
nop
add $60731, %rdi
lea addresses_D_ht+0xce43, %r13
nop
nop
nop
inc %r8
movb $0x61, (%r13)
nop
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0x1384f, %r13
nop
nop
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
and $0xffffffffffffffc0, %r13
vmovaps %ymm3, (%r13)
nop
nop
nop
nop
nop
sub %r8, %r8
lea addresses_A_ht+0xd9c3, %r13
clflush (%r13)
nop
dec %rcx
movb $0x61, (%r13)
nop
nop
nop
inc %r8
lea addresses_WT_ht+0x43, %rsi
lea addresses_WC_ht+0xa9c3, %rdi
nop
nop
nop
nop
nop
xor $49222, %rbx
mov $65, %rcx
rep movsw
nop
nop
nop
xor %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %r9
push %rax
push %rbp
push %rcx

// Store
lea addresses_A+0x17543, %rcx
nop
nop
nop
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %r9
movq %r9, %xmm2
vmovups %ymm2, (%rcx)
nop
and %rax, %rax

// Store
lea addresses_normal+0x5543, %r12
nop
nop
and %r15, %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovaps %ymm4, (%r12)
nop
add %r12, %r12

// Load
mov $0xbb2ac0000000143, %r15
nop
nop
cmp %r9, %r9
vmovups (%r15), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rax
nop
nop
nop
xor $9273, %rax

// Store
lea addresses_WC+0x18263, %rcx
nop
xor $16186, %rax
movb $0x51, (%rcx)
dec %r15

// Load
lea addresses_A+0x7d43, %r15
sub $60132, %rbp
movb (%r15), %r12b
nop
add %rbp, %rbp

// Faulty Load
lea addresses_A+0x7d43, %r9
cmp %rax, %rax
mov (%r9), %cx
lea oracles, %rax
and $0xff, %rcx
shlq $12, %rcx
mov (%rax,%rcx,1), %rcx
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_normal', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'00': 14}
00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
