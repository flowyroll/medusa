.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x180a4, %rsi
lea addresses_D_ht+0xed22, %rdi
nop
add %r12, %r12
mov $39, %rcx
rep movsq
nop
nop
and %rdx, %rdx
lea addresses_WC_ht+0x40f4, %rcx
nop
nop
add $61082, %rax
movups (%rcx), %xmm7
vpextrq $0, %xmm7, %r12
nop
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_normal_ht+0x14ff4, %rdi
nop
xor $60607, %r15
mov (%rdi), %ecx
and $24783, %rax
lea addresses_UC_ht+0x187f4, %rsi
lea addresses_normal_ht+0x1abf4, %rdi
nop
nop
nop
nop
inc %rax
mov $45, %rcx
rep movsq
nop
nop
lfence
lea addresses_WT_ht+0x9ff4, %rsi
lea addresses_A_ht+0x9bf4, %rdi
clflush (%rdi)
nop
lfence
mov $33, %rcx
rep movsb
cmp $26076, %rsi
lea addresses_WC_ht+0x15274, %r15
clflush (%r15)
nop
nop
dec %rdi
movl $0x61626364, (%r15)
nop
nop
nop
inc %r11
lea addresses_WT_ht+0xebf4, %rcx
nop
nop
nop
and %r15, %r15
movups (%rcx), %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
nop
dec %rcx
lea addresses_D_ht+0x15524, %rsi
lea addresses_D_ht+0xac64, %rdi
clflush (%rdi)
nop
nop
add %rdx, %rdx
mov $69, %rcx
rep movsq
nop
nop
xor $1795, %rdi
lea addresses_WC_ht+0x43f4, %rsi
lea addresses_WC_ht+0x131b0, %rdi
clflush (%rsi)
nop
nop
nop
xor %r11, %r11
mov $85, %rcx
rep movsl
nop
nop
nop
xor $33871, %rdx
lea addresses_D_ht+0x439c, %r11
nop
nop
nop
cmp %rdi, %rdi
mov (%r11), %rdx
nop
add %rcx, %rcx
lea addresses_normal_ht+0x19474, %rdi
nop
add %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
and $0xffffffffffffffc0, %rdi
vmovaps %ymm6, (%rdi)
nop
nop
nop
nop
dec %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %rdx

// Faulty Load
lea addresses_US+0x193f4, %r10
nop
nop
add $39786, %r8
mov (%r10), %edx
lea oracles, %r13
and $0xff, %rdx
shlq $12, %rdx
mov (%r13,%rdx,1), %rdx
pop %rdx
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 7}}
{'00': 12}
00 00 00 00 00 00 00 00 00 00 00 00
*/
