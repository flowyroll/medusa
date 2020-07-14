.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1d94, %rdx
nop
and $24816, %r15
mov (%rdx), %r13
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_WC_ht+0x4214, %rsi
lea addresses_D_ht+0xdd94, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %r10
mov $102, %rcx
rep movsb
nop
nop
nop
nop
sub $39959, %rcx
lea addresses_A_ht+0x4794, %rsi
lea addresses_normal_ht+0x9af4, %rdi
clflush (%rdi)
nop
cmp $53255, %r10
mov $88, %rcx
rep movsb
nop
nop
nop
nop
nop
add $35176, %rdi
lea addresses_normal_ht+0x7014, %rdi
nop
nop
nop
nop
nop
cmp $64895, %r9
movb $0x61, (%rdi)
nop
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0x8174, %rsi
nop
add $33308, %rdi
mov (%rsi), %r13d
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x1b894, %rdi
nop
nop
inc %rsi
mov (%rdi), %r9w
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x27e4, %r9
nop
nop
nop
nop
nop
sub %r15, %r15
vmovups (%r9), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
add %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rbp
push %rbx
push %rdi

// Store
mov $0x34e5400000004b4, %r9
nop
nop
nop
nop
nop
sub $47962, %rbx
movb $0x51, (%r9)
nop
nop
add $18082, %r12

// Faulty Load
lea addresses_A+0x19a14, %r11
xor $25926, %rbp
movb (%r11), %r14b
lea oracles, %r11
and $0xff, %r14
shlq $12, %r14
mov (%r11,%r14,1), %r14
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'00': 8}
00 00 00 00 00 00 00 00
*/
