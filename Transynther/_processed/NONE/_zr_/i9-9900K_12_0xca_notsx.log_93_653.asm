.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x10c7c, %rbp
nop
xor $27493, %rax
mov $0x6162636465666768, %r14
movq %r14, %xmm1
movups %xmm1, (%rbp)
nop
nop
nop
nop
xor $44143, %r11
lea addresses_D_ht+0x67c, %rdx
nop
nop
sub $63916, %rdi
movw $0x6162, (%rdx)
nop
nop
nop
nop
sub $63890, %rax
lea addresses_D_ht+0x11b66, %r11
cmp $51043, %rax
movl $0x61626364, (%r11)
xor $5812, %rdx
lea addresses_WT_ht+0x13b10, %rsi
lea addresses_WC_ht+0x1913c, %rdi
nop
xor %r11, %r11
mov $24, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x1d5d4, %r14
add %rsi, %rsi
movb $0x61, (%r14)
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_D_ht+0x13cfc, %rsi
lea addresses_UC_ht+0x1ae3c, %rdi
nop
cmp $22668, %r14
mov $119, %rcx
rep movsw
dec %rdi
lea addresses_normal_ht+0x17c3c, %rax
clflush (%rax)
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %r11
movq %r11, (%rax)
nop
dec %rcx
lea addresses_normal_ht+0x17d4, %rsi
lea addresses_UC_ht+0x121fc, %rdi
nop
nop
sub %rbx, %rbx
mov $29, %rcx
rep movsb
nop
and %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r9
push %rax
push %rbx
push %rdi
push %rdx
push %rsi

// Store
mov $0x7384dc00000006bd, %rax
nop
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
movups %xmm2, (%rax)
nop
and %rdi, %rdi

// Store
lea addresses_WT+0x1f80c, %rdx
nop
dec %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movaps %xmm6, (%rdx)

// Exception!!!
mov (0), %rdx
xor %r9, %r9

// Faulty Load
lea addresses_A+0x9e3c, %r9
nop
nop
sub $60863, %rsi
mov (%r9), %r13w
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': True, 'size': 4, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'dst': {'same': True, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'00': 93}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
