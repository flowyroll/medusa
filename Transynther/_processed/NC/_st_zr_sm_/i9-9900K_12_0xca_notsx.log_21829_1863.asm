.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x10fa1, %rsi
lea addresses_normal_ht+0x3495, %rdi
nop
nop
nop
nop
xor %rbx, %rbx
mov $42, %rcx
rep movsl
nop
nop
nop
nop
sub %r12, %r12
lea addresses_normal_ht+0x1d6a1, %rbx
clflush (%rbx)
nop
nop
sub %r13, %r13
mov (%rbx), %esi
nop
nop
nop
nop
nop
add $43278, %rbx
lea addresses_A_ht+0x15021, %r13
dec %r10
mov $0x6162636465666768, %r12
movq %r12, %xmm7
and $0xffffffffffffffc0, %r13
movntdq %xmm7, (%r13)
nop
cmp $45095, %rbx
lea addresses_D_ht+0x1721, %r12
nop
nop
add $20407, %rbx
mov (%r12), %r13w
nop
add $10565, %rcx
lea addresses_normal_ht+0xfba1, %rbx
nop
nop
nop
xor %r10, %r10
movb (%rbx), %r13b
nop
nop
nop
nop
nop
and $454, %r13
lea addresses_A_ht+0x1cda1, %rsi
nop
xor %rbx, %rbx
vmovups (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r12
nop
nop
nop
nop
nop
and $46765, %rsi
lea addresses_A_ht+0x1c0a1, %r10
nop
nop
sub $16436, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r10)
nop
nop
sub $65490, %rbx
lea addresses_WC_ht+0x1b9ef, %r10
nop
nop
sub %r13, %r13
movb (%r10), %cl
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x19ba1, %rcx
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rcx)
nop
nop
add $63990, %rcx
lea addresses_UC_ht+0x185a1, %rsi
lea addresses_WC_ht+0x18fa1, %rdi
clflush (%rsi)
nop
nop
nop
dec %r15
mov $17, %rcx
rep movsw
nop
nop
sub $17061, %rsi
lea addresses_WC_ht+0xccc1, %rcx
dec %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
nop
and $13105, %r10
lea addresses_UC_ht+0x15bfd, %rsi
nop
nop
nop
nop
nop
cmp $2913, %rbx
movb $0x61, (%rsi)
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x3661, %rsi
lea addresses_normal_ht+0x11da1, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub %r10, %r10
mov $116, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0x193a1, %rsi
mov $0x101da10000000539, %rdi
nop
nop
sub %rbp, %rbp
mov $7, %rcx
rep movsb
nop
nop
nop
nop
add $56067, %rdi

// Store
mov $0x7dab4600000003a1, %rax
nop
nop
nop
nop
nop
cmp $832, %r14
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
and %r11, %r11

// Store
lea addresses_WT+0x158a1, %rax
nop
cmp $20277, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, (%rax)
nop
nop
nop
nop
nop
xor $46354, %rax

// Store
lea addresses_US+0xed21, %r11
nop
xor %rdi, %rdi
movb $0x51, (%r11)
nop
nop
and $33653, %r14

// Store
lea addresses_PSE+0xacc9, %rdi
nop
nop
nop
inc %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
and %r11, %r11

// Faulty Load
mov $0x7dab4600000003a1, %r14
nop
nop
nop
inc %rsi
mov (%r14), %edi
lea oracles, %rbp
and $0xff, %rdi
shlq $12, %rdi
mov (%rbp,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'00': 168, '52': 21661}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
