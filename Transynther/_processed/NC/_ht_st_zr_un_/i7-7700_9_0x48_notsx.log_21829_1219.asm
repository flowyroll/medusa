.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1612a, %rsi
lea addresses_D_ht+0x1be0a, %rdi
inc %r12
mov $12, %rcx
rep movsb
nop
nop
nop
nop
nop
and %r8, %r8
lea addresses_A_ht+0x13082, %r11
nop
nop
nop
nop
nop
sub $2316, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r11)
inc %r11
lea addresses_UC_ht+0x1778a, %rcx
nop
xor %rax, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%rcx)
nop
nop
nop
nop
dec %r12
lea addresses_normal_ht+0x9276, %rsi
lea addresses_WT_ht+0x1c5ea, %rdi
clflush (%rsi)
nop
nop
and $10215, %rax
mov $121, %rcx
rep movsb
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x106a, %r11
clflush (%r11)
nop
sub %rcx, %rcx
mov (%r11), %r8w
nop
and $35908, %r8
lea addresses_A_ht+0xa26a, %rcx
nop
nop
nop
nop
nop
add %r11, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rcx)
nop
dec %r12
lea addresses_normal_ht+0x7e8a, %rcx
nop
nop
dec %r11
movl $0x61626364, (%rcx)
nop
nop
nop
nop
xor $47628, %rdi
lea addresses_normal_ht+0x100ca, %rsi
lea addresses_WT_ht+0x1c46a, %rdi
nop
nop
nop
nop
nop
dec %r13
mov $127, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_UC_ht+0x1c6ea, %r8
nop
nop
mfence
mov (%r8), %cx
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0xac6a, %rsi
lea addresses_normal_ht+0x956a, %rdi
nop
nop
nop
xor %r12, %r12
mov $17, %rcx
rep movsw
nop
nop
nop
nop
and %r12, %r12
lea addresses_D_ht+0x1c6a, %rsi
lea addresses_UC_ht+0x9c6a, %rdi
nop
nop
nop
mfence
mov $115, %rcx
rep movsl
nop
xor %r12, %r12
lea addresses_normal_ht+0x56ca, %rdi
nop
nop
nop
nop
nop
cmp %r12, %r12
movb $0x61, (%rdi)
sub $28306, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x8e6a, %rsi
lea addresses_normal+0xe86a, %rdi
nop
nop
nop
nop
dec %r10
mov $2, %rcx
rep movsw
nop
and %r10, %r10

// Store
lea addresses_PSE+0x286a, %rsi
nop
nop
nop
nop
cmp $21423, %r12
mov $0x5152535455565758, %r10
movq %r10, (%rsi)
nop
nop
nop
nop
add %rax, %rax

// Faulty Load
mov $0x4806b000000046a, %r10
nop
nop
nop
nop
nop
sub %r12, %r12
vmovups (%r10), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdi
lea oracles, %r14
and $0xff, %rdi
shlq $12, %rdi
mov (%r14,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_PSE'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 9}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 4}, 'OP': 'STOR'}
{'ba': 1, 'dd': 1, '92': 1, '49': 1, '20': 2, '2f': 1, '89': 1, 'fd': 1, '35': 2, '5b': 1, '09': 1, '3b': 4, 'b6': 2, 'ff': 2, '58': 7, '3e': 1, '39': 1, '9a': 1, '6a': 1, '0a': 2, 'a7': 1, '01': 1, 'a1': 1, '4f': 1, 'd5': 1, '07': 1, 'a9': 1, '00': 12, 'e5': 1, '41': 1, '64': 1, '7b': 1, '59': 31, '7d': 1, '7f': 1, '46': 1316, '63': 1, '32': 1, '29': 1, 'a8': 1, '6e': 2813, '1c': 1, 'c9': 2, '3f': 1, '44': 17599, 'ca': 1, 'cf': 1, '91': 1}
44 44 6e 46 44 44 44 44 44 44 44 44 44 6e 44 46 46 44 44 44 44 44 44 44 44 46 44 44 46 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 46 44 44 44 6e 44 6e 6e 44 6e 44 44 44 44 44 46 44 44 6e 44 44 44 44 6e 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 b6 6e 44 44 6e 44 44 44 44 44 44 44 44 44 46 6e 44 44 6e 46 44 6e 44 44 44 44 44 44 44 44 44 46 44 44 6e 44 44 44 46 44 44 44 44 6e 44 44 44 44 6e 44 44 44 6e 44 44 44 91 46 6e 6e 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 6e 44 44 44 44 44 44 44 44 44 44 44 44 44 6e 44 44 44 44 44 44 44 44 44 44 44 6e 44 6e 44 6e 44 44 44 6e 44 44 6e 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 6e 44 44 44 44 46 44 44 44 44 44 44 44 46 44 44 46 44 44 44 44 44 44 44 44 46 44 44 44 44 6e 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 46 44 44 44 6e 44 44 6e 44 6e 6e 44 44 44 44 46 44 44 6e 44 44 44 44 44 44 44 6e 44 44 44 44 6e 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 fd 6e 6e 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 6e 44 44 44 44 44 44 44 44 44 6e 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 6e 44 44 44 44 6e 44 44 44 44 44 44 44 44 44 44 46 44 44 6e 44 44 44 44 44 44 44 44 46 44 44 46 44 44 44 44 46 44 44 44 6e 44 44 44 6e 44 44 44 44 44 6e 44 44 44 46 44 44 44 44 44 44 44 6e 44 6e 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 6e 46 44 44 44 44 44 44 44 44 44 44 44 6e 44 44 44 44 44 44 44 44 6e 44 44 44 44 44 44 44 44 44 44 44 6e 6e 44 44 44 6e 44 44 6e 44 44 44 44 46 44 44 44 6e 44 44 44 46 44 44 44 44 44 6e 44 44 44 44 44 44 44 44 44 6e 44 6e 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 46 44 44 46 46 44 6e 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 46 46 44 44 44 44 46 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 46 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 46 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 6e 46 44 44 44 46 44 44 44 6e 44 44 44 44 44 44 6e 44 44 46 44 44 44 44 6e 6e 44 46 44 44 6e 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 46 44 44 6e 44 44 44 44 44 44 44 44 6e 6e 44 6e 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 6e 6e 44 44 44 44 44 6e 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 6e 44 46 44 44 44 44 44 44 44 44 44 44 6e 44 44 46 44 46 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 6e 44 44 44 44 46 6e 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 6e 44 44 44 6e 44 44 44 44 44 44 44 44 44 44 44
*/
