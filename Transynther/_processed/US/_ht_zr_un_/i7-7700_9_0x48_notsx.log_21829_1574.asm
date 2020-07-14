.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xa6fa, %r15
add %r10, %r10
mov (%r15), %bp
dec %r11
lea addresses_normal_ht+0xeb7a, %rbx
nop
nop
nop
nop
nop
add $4742, %r12
mov $0x6162636465666768, %r10
movq %r10, (%rbx)
cmp %rbx, %rbx
lea addresses_UC_ht+0x19870, %rsi
lea addresses_WT_ht+0x14b7a, %rdi
nop
nop
nop
nop
lfence
mov $5, %rcx
rep movsq
and %r12, %r12
lea addresses_normal_ht+0x1ea8e, %r11
nop
add %rsi, %rsi
mov (%r11), %rbx
nop
nop
nop
add $23548, %rbx
lea addresses_A_ht+0xfb7a, %rdi
nop
nop
nop
and $52040, %rbp
mov (%rdi), %r10d
nop
nop
nop
nop
nop
xor $4705, %r15
lea addresses_WT_ht+0x17e7a, %rsi
lea addresses_A_ht+0xf57a, %rdi
nop
nop
nop
nop
sub $1281, %r15
mov $118, %rcx
rep movsq
nop
xor %r12, %r12
lea addresses_normal_ht+0x7a7a, %rsi
lea addresses_UC_ht+0x2eda, %rdi
clflush (%rsi)
inc %rbp
mov $116, %rcx
rep movsw
nop
nop
nop
inc %r11
lea addresses_D_ht+0xfeaa, %rbp
clflush (%rbp)
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %r10
movq %r10, (%rbp)
dec %r10
lea addresses_normal_ht+0x137a, %r15
nop
nop
nop
nop
nop
cmp $16172, %rbp
mov $0x6162636465666768, %r10
movq %r10, %xmm4
movups %xmm4, (%r15)
nop
nop
xor $28084, %rbx
lea addresses_A_ht+0x89fa, %rbx
nop
nop
nop
nop
inc %r10
mov (%rbx), %edi
nop
nop
nop
nop
nop
cmp $54858, %rcx
lea addresses_A_ht+0xe87a, %rsi
lea addresses_WC_ht+0x1a04a, %rdi
nop
inc %r12
mov $121, %rcx
rep movsl
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x1cb9a, %r10
nop
nop
nop
add $14897, %rbx
mov (%r10), %r11
nop
nop
nop
sub $44870, %r11
lea addresses_WT_ht+0x9b7a, %rcx
nop
nop
and $32796, %r10
mov $0x6162636465666768, %r11
movq %r11, (%rcx)
sub $45448, %rdi
lea addresses_WT_ht+0x1277a, %r15
clflush (%r15)
nop
nop
nop
cmp %r11, %r11
mov (%r15), %ebx
nop
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x5b7a, %rsi
nop
nop
nop
nop
dec %r12
movups (%rsi), %xmm4
vpextrq $0, %xmm4, %rbp
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rdx

// Load
lea addresses_US+0x1fffa, %r14
clflush (%r14)
nop
nop
nop
and %r15, %r15
mov (%r14), %r8w
nop
nop
nop
nop
nop
dec %r15

// Store
lea addresses_A+0x1ff7a, %rdx
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %rcx
movq %rcx, (%rdx)
nop
nop
nop
cmp $48630, %rdx

// Faulty Load
lea addresses_US+0x1337a, %r14
nop
nop
nop
xor $7961, %r15
movups (%r14), %xmm0
vpextrq $0, %xmm0, %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_A', 'congruent': 10}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 7}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 11}}
{'45': 49, 'd2': 1, 'fa': 2379, 'fe': 1, '49': 2, '00': 13151, '03': 2, '47': 2, '01': 15, '18': 36, 'ff': 2, '1a': 8, '67': 5442, '44': 737, '20': 2}
00 00 00 00 00 67 fa 00 00 00 00 00 00 00 00 fa fa 00 00 00 67 00 67 fa 00 00 00 67 00 00 44 00 00 67 67 67 67 fa 00 00 67 fa 00 00 00 00 00 fa fa fa 00 fa 00 67 00 00 00 00 67 00 67 00 67 67 67 00 00 44 00 67 00 fa fa 00 00 00 67 18 00 00 00 67 00 00 00 fa 67 fa 00 67 fa 00 67 67 67 00 18 00 00 67 00 00 00 67 00 00 67 67 00 00 00 00 67 fa fa 67 67 00 67 00 00 67 00 00 00 00 00 67 00 67 67 00 00 00 00 00 00 00 67 00 67 00 67 67 00 00 67 67 00 00 fa 67 00 00 00 00 00 00 67 fa 00 00 67 67 00 00 67 00 00 00 00 67 00 00 00 00 00 00 67 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 fa fa 00 00 00 67 67 fa fa 67 00 00 00 67 67 00 00 67 00 00 00 44 67 00 00 00 00 00 00 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 67 00 00 00 00 00 fa 67 00 67 00 67 00 00 67 00 00 00 00 fa fa 67 67 67 00 67 fa 00 67 fa 00 00 00 67 00 00 00 00 00 00 00 44 00 67 00 67 00 44 67 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 fa 00 00 00 67 00 fa 00 00 00 00 00 00 00 00 00 00 67 00 67 67 fa 00 00 00 00 67 67 67 00 00 00 00 67 00 00 00 00 00 00 00 67 44 67 fa fa 67 fa 00 00 00 00 00 00 00 00 00 67 00 00 67 00 00 00 00 00 00 00 44 67 fa 00 00 00 67 00 00 00 67 67 00 00 00 00 00 67 44 00 67 44 67 fa 67 67 67 00 00 00 00 00 00 fa 00 00 67 00 67 67 67 00 00 fa 00 44 00 00 67 67 00 00 00 44 00 00 67 00 00 00 00 67 00 00 fa fa 00 00 00 00 67 67 00 00 00 00 00 00 fa fa 67 00 00 67 fa 00 00 67 00 00 67 00 67 00 00 00 00 00 00 00 67 fa 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 67 67 00 00 00 00 00 67 00 00 00 00 00 00 67 00 00 00 67 00 00 00 44 00 00 00 00 00 67 00 67 67 00 00 00 00 00 67 67 67 00 00 fa 67 67 00 00 00 67 00 00 00 00 67 00 00 67 00 fa 67 00 00 00 fa fa 00 67 00 00 00 67 67 67 00 00 00 00 00 00 00 00 fa 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 67 fa 00 00 00 00 00 00 00 00 00 00 67 00 44 67 00 67 00 fa 00 00 67 67 67 00 00 00 00 00 00 67 44 00 00 00 67 67 fa fa 67 00 00 00 00 00 00 00 00 00 00 00 00 00 fa 44 fa 67 67 00 67 00 00 00 67 00 00 00 00 67 00 67 00 00 00 00 fa 00 00 67 00 00 00 00 00 00 00 67 00 00 00 00 00 00 00 67 00 67 67 00 00 00 00 00 67 00 18 00 00 00 00 00 00 00 67 67 fa 00 00 67 00 67 44 67 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 67 67 00 67 00 00 00 00 00 00 00 00 67 00 00 00 00 00 00 00 00 67 67 44 00 00 fa 67 fa fa 67 00 67 00 00 00 00 00 44 00 00 00 44 67 00 67 00 00 00 00 00 67 00 00 67 00 00 00 00 00 00 00 00 00 00 67 00 67 fa 00 00 67 fa fa 00 00 44 67 44 fa fa 00 67 fa 00 00 00 00 67 67 00 fa fa 67 67 00 00 00 00 67 00 00 00 00 00 00 67 fa fa 67 fa fa 00 00 00 67 00 00 00 00 00 00 67 00 00 00 00 67 67 00 00 00 00 00 00 00 44 00 67 00 00 67 45 67 00 00 00 00 00 00 00 00 00 00 00 00 00 67 67 00 00 67 fa 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 67 00 00 00 00 00 00 00 00 00 67 00 00 00 67 44 67 00 67 fa fa 67 00 00 00 00 00 00 00 00 00 67 03 00 00 67 00 67 00 00 67 00 00 00 67 00 00 00 00 00 00 00 67 00 00 00 00 00 00 00 67 fa 00 00 00 67 67 00 00 67 67 00
*/
