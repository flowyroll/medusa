.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xffa6, %r11
nop
sub %rbx, %rbx
mov $0x6162636465666768, %rdx
movq %rdx, (%r11)
nop
nop
nop
cmp $33414, %r12
lea addresses_normal_ht+0x3395, %rbp
nop
nop
nop
nop
inc %r8
mov (%rbp), %ecx
nop
nop
xor %rbp, %rbp
lea addresses_UC_ht+0x19626, %rsi
lea addresses_WT_ht+0xa626, %rdi
nop
and %r12, %r12
mov $50, %rcx
rep movsq
nop
inc %rcx
lea addresses_normal_ht+0x1bde6, %rsi
lea addresses_WT_ht+0x17afe, %rdi
inc %r11
mov $94, %rcx
rep movsl
nop
nop
nop
inc %r8
lea addresses_WC_ht+0x6026, %rcx
clflush (%rcx)
nop
nop
cmp %rdx, %rdx
movl $0x61626364, (%rcx)
nop
sub $7303, %rsi
lea addresses_D_ht+0xc849, %rsi
lea addresses_WC_ht+0x1507e, %rdi
nop
nop
sub $64658, %r12
mov $1, %rcx
rep movsq
nop
nop
inc %r11
lea addresses_UC_ht+0xee26, %rsi
lea addresses_normal_ht+0x12f0a, %rdi
nop
add %rbx, %rbx
mov $19, %rcx
rep movsq
xor %r12, %r12
lea addresses_A_ht+0xf7a6, %rdi
nop
nop
nop
nop
sub $37293, %r8
movb (%rdi), %bl
nop
cmp %rbx, %rbx
lea addresses_WC_ht+0x134c6, %rsi
lea addresses_WC_ht+0x26, %rdi
nop
nop
nop
nop
and %r11, %r11
mov $42, %rcx
rep movsq
dec %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdx

// Store
mov $0x28f3dc0000000e26, %r15
nop
nop
nop
nop
sub $26469, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movups %xmm4, (%r15)
nop
nop
nop
sub $21963, %rcx

// Store
lea addresses_WC+0x3a26, %rdx
nop
nop
nop
xor $5691, %rbx
movb $0x51, (%rdx)
nop
nop
nop
nop
nop
inc %rbx

// Load
mov $0x5874600000000c26, %rcx
nop
sub %r8, %r8
mov (%rcx), %r15
nop
nop
nop
nop
nop
add $22219, %r10

// Store
lea addresses_RW+0x4a26, %r10
nop
nop
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm4
vmovaps %ymm4, (%r10)
dec %rdx

// Store
lea addresses_RW+0xf486, %r15
clflush (%r15)
xor $1339, %r14
movb $0x51, (%r15)
nop
nop
nop
nop
nop
sub %r8, %r8

// Faulty Load
mov $0x4b370a0000000626, %r8
nop
nop
xor %r10, %r10
mov (%r8), %rdx
lea oracles, %r14
and $0xff, %rdx
shlq $12, %rdx
mov (%r14,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_RW', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_RW', 'congruent': 3}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 6}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'00': 13}
00 00 00 00 00 00 00 00 00 00 00 00 00
*/
