.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x3a91, %rsi
lea addresses_UC_ht+0xd551, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $40, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $20464, %rbx
lea addresses_UC_ht+0x125c9, %rsi
lea addresses_UC_ht+0x19dc9, %rdi
nop
nop
xor $53258, %rax
mov $65, %rcx
rep movsb
nop
nop
dec %rbx
lea addresses_A_ht+0x4609, %rsi
lea addresses_UC_ht+0xd988, %rdi
nop
nop
nop
cmp $21698, %r8
mov $2, %rcx
rep movsw
nop
nop
nop
nop
dec %rax
lea addresses_D_ht+0x185c9, %rbx
nop
nop
nop
nop
add $58413, %r15
mov $0x6162636465666768, %r8
movq %r8, %xmm3
vmovups %ymm3, (%rbx)
nop
nop
nop
lfence
lea addresses_WC_ht+0x1a5c9, %rbx
nop
add %rcx, %rcx
movl $0x61626364, (%rbx)
nop
nop
xor $15213, %rbx
lea addresses_UC_ht+0x12d45, %rsi
lea addresses_WT_ht+0x1e6c9, %rdi
nop
nop
nop
nop
xor $2193, %r15
mov $4, %rcx
rep movsq
nop
nop
sub $24311, %rsi
lea addresses_D_ht+0xd889, %rsi
clflush (%rsi)
nop
nop
cmp %rax, %rax
mov (%rsi), %rcx
nop
nop
nop
nop
xor %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x1a577b00000005c9, %rax
nop
nop
nop
nop
nop
and %rdx, %rdx
movw $0x5152, (%rax)
nop
nop
sub $3009, %rcx

// Store
lea addresses_A+0x929, %rcx
nop
nop
cmp %r8, %r8
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
cmp $23867, %rsi

// Faulty Load
mov $0x7bd2b700000005c9, %rdi
nop
nop
nop
cmp %r8, %r8
vmovups (%rdi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rsi
lea oracles, %r8
and $0xff, %rsi
shlq $12, %rsi
mov (%r8,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'66': 1, '9c': 1, 'c4': 1, 'ae': 2, '96': 1, '30': 1, '86': 2, 'ec': 2, '3e': 1, 'f4': 1, '52': 354, '68': 1, 'a6': 1, '98': 2, 'dc': 2, '20': 1, 'd2': 1, '72': 2, 'a4': 2, '44': 1, 'ee': 1, '56': 1, '6e': 1, '4e': 1, 'bc': 1, '48': 2, 'e8': 2, 'c8': 1, 'fc': 1, 'ba': 1, '32': 3, '92': 1, 'e4': 2, 'b8': 1, '16': 1, '0a': 1, 'fe': 1, 'd4': 1, '10': 1, '00': 7, 'c2': 3, 'e0': 1, '4a': 1, '8a': 1, '06': 2, '5a': 1, 'c6': 2, 'c0': 1, 'da': 1, '04': 1, '7e': 1, '14': 1, '28': 1, '76': 1, '50': 1, '34': 1, 'a8': 2, '0e': 1}
52 52 52 52 52 dc 52 52 28 52 52 52 52 68 52 52 52 52 52 52 52 52 a4 52 52 92 e0 00 52 52 52 52 52 16 52 52 52 52 52 52 44 52 52 52 30 52 52 52 52 52 52 00 52 52 4e 52 4a 52 52 52 52 00 ae 52 52 52 52 52 52 52 52 52 52 52 52 52 86 52 52 52 52 52 52 00 52 00 52 76 52 10 52 52 52 52 52 52 bc 52 52 52 00 52 e4 52 52 52 52 52 52 52 52 52 52 52 52 52 50 52 0a 52 52 52 86 9c 52 52 52 52 b8 52 52 52 52 c4 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 72 52 52 52 52 52 52 52 52 52 c2 52 52 06 52 52 52 32 52 52 52 52 52 52 52 52 52 d4 52 52 52 a6 52 52 52 52 52 52 52 52 52 d2 52 52 c0 52 ae 48 8a 20 52 52 52 52 52 52 52 52 0e 52 e8 52 52 52 52 3e 52 52 52 52 52 52 52 e4 52 52 52 52 c2 52 52 52 52 52 52 52 52 52 56 52 52 52 52 52 52 52 72 52 52 52 a8 52 52 52 52 52 c2 52 52 52 52 52 52 da 52 52 52 52 98 52 52 52 52 52 52 52 52 66 52 98 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 34 52 52 52 52 52 52 52 c8 52 52 ba 52 52 52 52 52 52 c6 52 52 52 52 52 52 52 52 ee 52 32 52 5a 52 52 52 52 ec 52 52 dc 52 52 52 52 52 52 52 52 52 52 32 a8 52 52 52 c6 52 52 52 6e 52 52 52 52 52 52 52 52 52 52 52 52 06 52 52 52 52 52 52 52 14 52 52 52 52 52 52 52 f4 52 52 52 fe 52 52 52 52 52 52 52 52 48 52 52 a4 52 e8 52 52 04 52 52 ec 52 52 52 52 52 52 52 52 52 7e 52 52 52 52 52 fc 52 52 96 52 52 52
*/
