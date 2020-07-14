.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x7ab3, %rsi
lea addresses_WC_ht+0x665, %rdi
nop
nop
nop
cmp %r15, %r15
mov $25, %rcx
rep movsw
nop
and %rbp, %rbp
lea addresses_UC_ht+0x16411, %r15
nop
add %r8, %r8
mov (%r15), %ebp
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_A_ht+0x11c1, %rdi
nop
and %r15, %r15
mov (%rdi), %r8w
nop
nop
sub $45653, %rdi
lea addresses_WC_ht+0x1c051, %rcx
nop
nop
xor $9587, %rbx
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
nop
nop
sub $38019, %rbx
lea addresses_normal_ht+0x66dd, %rdi
nop
nop
and %rcx, %rcx
movb $0x61, (%rdi)
and $23329, %rcx
lea addresses_WC_ht+0xddd1, %rsi
lea addresses_A_ht+0x7851, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov $86, %rcx
rep movsq
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WC_ht+0x6051, %rsi
lea addresses_WT_ht+0x41d1, %rdi
dec %rdx
mov $57, %rcx
rep movsb
nop
cmp $25175, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rbx
push %rdx

// Faulty Load
lea addresses_US+0x5851, %r11
nop
dec %rbx
mov (%r11), %rdx
lea oracles, %r11
and $0xff, %rdx
shlq $12, %rdx
mov (%r11,%rdx,1), %rdx
pop %rdx
pop %rbx
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'dst': {'same': True, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'00': 13}
00 00 00 00 00 00 00 00 00 00 00 00 00
*/
